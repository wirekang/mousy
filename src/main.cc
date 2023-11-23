#include <cstdio>
#include "build-constant.h"

int main() {
    printf("Hello world\n");
    printf("version=%s\n", build_constant::version);
    return 0;
}
