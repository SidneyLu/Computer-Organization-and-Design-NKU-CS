#include <arm_sve.h>
#include <stdio.h>

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
    int q[8] = {1, 2, 3, 4, 5, 6, 7, 8};
    int k[8] = {8, 7, 6, 5, 4, 3, 2, 1};
    int result = dot_sve2(q, k, 8);

    printf("%d\n", result);
    return 0;
}
