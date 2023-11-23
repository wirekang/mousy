#include <cstdio>
#include "build-constant.h"

int main() {
    printf("Hello\n");
    printf("version=%s branch=%s\n", build_constant::version, build_constant::branch);
    return 0;
}
