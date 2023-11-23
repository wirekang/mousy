#include <cstdio>
#include "build-constant.h"

int main() {
    printf("Hello\n");
    printf("version=%s\n", build_constant::version);
    return 0;
}
