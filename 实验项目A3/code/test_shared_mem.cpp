#include <sycl/sycl.hpp>
#include <iostream>
#include <chrono>

using namespace sycl;
constexpr int N = 10;

void test_malloc_host_device(queue& my_gpu_queue) {
    auto start = std::chrono::high_resolution_clock::now();

    int* host_mem = malloc_host<int>(N, my_gpu_queue);
    int* device_mem = malloc_device<int>(N, my_gpu_queue);

    // Init CPU data
    for (int i = 0; i < N; i++) {
        host_mem[i] = i;
    }

    // Copy from host(CPU) to device(GPU)
    my_gpu_queue.memcpy(device_mem, host_mem, N * sizeof(int)).wait();

    // Submit the content to the queue for execution
    my_gpu_queue.submit([&](handler& h) {
        h.parallel_for(range{N}, [=](id<1> item) {
            device_mem[item] *= 2;
        });
    });

    // Wait the computation done
    my_gpu_queue.wait();

    // Copy back from GPU to CPU
    my_gpu_queue.memcpy(host_mem, device_mem, N * sizeof(int)).wait();

    printf("\nMalloc Host & Device Results:\n");
    for (int i = 0; i < N; i++) {
        printf("%d, ", host_mem[i]);
    }
    printf("\n");

    free(host_mem, my_gpu_queue);
    free(device_mem, my_gpu_queue);

    auto end = std::chrono::high_resolution_clock::now();
    std::cout << "Malloc Host & Device Execution Time: "
              << std::chrono::duration<double, std::milli>(end - start).count() << " ms\n";
}

void test_malloc_shared(queue& my_gpu_queue) {
    auto start = std::chrono::high_resolution_clock::now();

    int* shared_mem = malloc_shared<int>(N, my_gpu_queue);

    // Init data
    for (int i = 0; i < N; i++) {
        shared_mem[i] = i;
    }

    // Submit task to the queue
    my_gpu_queue.submit([&](handler& h) {
        h.parallel_for(range{N}, [=](id<1> item) {
            shared_mem[item] *= 2;
        });
    });

    // Wait the computation done
    my_gpu_queue.wait();

    printf("\nMalloc Shared Results:\n");
    for (int i = 0; i < N; i++) {
        printf("%d, ", shared_mem[i]);
    }
    printf("\n");

    free(shared_mem, my_gpu_queue);

    auto end = std::chrono::high_resolution_clock::now();
    std::cout << "Malloc Shared Execution Time: "
              << std::chrono::duration<double, std::milli>(end - start).count() << " ms\n";
}

int main() {
    queue my_gpu_queue(sycl::gpu_selector_v);

    std::cout << "Selected GPU device: "
              << my_gpu_queue.get_device().get_info<info::device::name>() << "\n";

    test_malloc_host_device(my_gpu_queue);
    test_malloc_shared(my_gpu_queue);

    return 0;
}
