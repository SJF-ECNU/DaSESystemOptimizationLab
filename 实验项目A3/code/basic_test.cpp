#include <sycl/sycl.hpp>
#include <iostream>
using namespace sycl;

constexpr int N = 10;

int main() {
    queue my_gpu_queue(sycl::gpu_selector_v);

    auto device = my_gpu_queue.get_device();
    std::cout << "Device Name: " << device.get_info<info::device::name>() << "\n";
    std::cout << "Device Vendor: " << device.get_info<info::device::vendor>() << "\n";
    std::cout << "Driver Version: " << device.get_info<info::device::driver_version>() << "\n";

    int *host_mem = malloc_host<int>(N, my_gpu_queue);
    int *device_mem = malloc_device<int>(N, my_gpu_queue);

    std::cout << "Initializing host memory...\n";
    for (int i = 0; i < N; i++) {
        host_mem[i] = i;
    }

    std::cout << "Copying data from host to device...\n";
    my_gpu_queue.memcpy(device_mem, host_mem, N * sizeof(int)).wait();

    std::cout << "Submitting parallel computation to the queue...\n";
    my_gpu_queue.submit([&](handler &h) {
        h.parallel_for(range{N}, [=](id<1> item) {
            device_mem[item] *= 2;
        });
    });

    std::cout << "Waiting for computation to complete...\n";
    my_gpu_queue.wait();

    std::cout << "Copying data back from device to host...\n";
    my_gpu_queue.memcpy(host_mem, device_mem, N * sizeof(int)).wait();

    std::cout << "Data Result:\n";
    for (int i = 0; i < N; i++) {
        std::cout << host_mem[i] << ", ";
    }
    std::cout << "\nTask Done!\n";

    free(host_mem, my_gpu_queue);
    free(device_mem, my_gpu_queue);

    return 0;
}