#include <sycl/sycl.hpp>
#include <iostream>
using namespace sycl;

constexpr int N = 10;

int main() {
    queue my_gpu_queue(sycl::gpu_selector_v);

    std::cout << "Selected GPU device: " <<
        my_gpu_queue.get_device().get_info<info::device::name>() << "\n";

    // 申请共享内存，主机和设备共享此内存
    int *shared_mem = malloc_shared<int>(N, my_gpu_queue);

    for (int i = 0; i < N; i++) {
        shared_mem[i] = i;
    }

    my_gpu_queue.submit([&](handler& h) {

        h.parallel_for(range{N}, [=](id<1> item) {
            shared_mem[item] *= 2; 
        });

    });

    my_gpu_queue.wait();

    printf("\nData Result\n");
    for (int i = 0; i < N; i++) {
        printf("%d, ", shared_mem[i]);
    }
    printf("\nTask Done!\n");

    free(shared_mem, my_gpu_queue);

    return 0;
}
