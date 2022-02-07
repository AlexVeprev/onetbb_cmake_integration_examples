#include <iostream>
#include <oneapi/tbb.h>

int main() {
    std::cout << "TBB_runtime_version(): " << TBB_runtime_version() << std::endl;
    return 0;
}
