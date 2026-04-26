#ifndef LEN
#define LEN 1024
#endif

#ifndef REPEAT
#define REPEAT 20000
#endif

#include <arm_sve.h>
#include <stdint.h>

#define DOT_PER_CHUNK 120
#define DOT_PER_ROUND (DOT_PER_CHUNK * (LEN / 8))
#define EXPECTED_TOTAL ((int64_t)DOT_PER_ROUND * (int64_t)REPEAT)

static int q_vec[LEN];
static int k_vec[LEN];

static void init_vectors(void) {
    static const int q_base[8] = {1, 2, 3, 4, 5, 6, 7, 8};
    static const int k_base[8] = {8, 7, 6, 5, 4, 3, 2, 1};

    for (int i = 0; i < LEN; ++i) {
        q_vec[i] = q_base[i & 7];
        k_vec[i] = k_base[i & 7];
    }
}

__attribute__((noinline))
static int dot_sve2(const int *q, const int *k, int n) {
    svint32_t acc = svdup_s32(0);

    for (int i = 0; i < n; i += svcntw()) {
        svbool_t pg = svwhilelt_b32(i, n);
        svint32_t vq = svld1_s32(pg, &q[i]);
        svint32_t vk = svld1_s32(pg, &k[i]);
        acc = svmla_s32_m(pg, acc, vq, vk);
    }

    return svaddv_s32(svptrue_b32(), acc);
}

int main(void) {
    int64_t total = 0;

    init_vectors();

    for (int i = 0; i < REPEAT; ++i) {
        total += (int64_t)dot_sve2(q_vec, k_vec, LEN);
    }

    return total == EXPECTED_TOTAL ? 0 : 1;
}
