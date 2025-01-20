#include <sycl/sycl.hpp>
#include <iostream>
using namespace sycl;

constexpr int N = 1024;  // 向量的大小

int main() {
    // 创建队列，选择 GPU 设备
    queue my_gpu_queue(sycl::gpu_selector_v);

    std::cout << "Selected GPU device: " <<
        my_gpu_queue.get_device().get_info<info::device::name>() << "\n";

    // 在主机上创建并初始化向量
    int *A = malloc_host<int>(N, my_gpu_queue);
    int *B = malloc_host<int>(N, my_gpu_queue);
    int *C = malloc_host<int>(N, my_gpu_queue);

    for (int i = 0; i < N; i++) {
        A[i] = i;   // 向量A的元素初始化为索引值
        B[i] = 2*i; // 向量B的元素初始化为2倍的索引值
    }

    // 在设备上分配内存
    int *d_A = malloc_device<int>(N, my_gpu_queue);
    int *d_B = malloc_device<int>(N, my_gpu_queue);
    int *d_C = malloc_device<int>(N, my_gpu_queue);

    // 将数据从主机传输到设备
    my_gpu_queue.memcpy(d_A, A, N * sizeof(int)).wait();
    my_gpu_queue.memcpy(d_B, B, N * sizeof(int)).wait();

    // 定义工作组大小和全局工作大小
    size_t local_size = 256;    // 每个工作组中的元素数
    size_t global_size = N;     // 全局工作项数量

    // 使用ND_range提交向量加法计算
    my_gpu_queue.submit([&](handler& h) {
        // 设置设备内存的访问权限
        h.parallel_for<nd_range<1>>(nd_range<1>(global_size, local_size), [=](nd_item<1> item) {
            // 获取当前工作项的索引
            size_t idx = item.get_global_id(0);
            
            if (idx < N) {  // 确保索引在合法范围内
                d_C[idx] = d_A[idx] + d_B[idx];  // 向量加法
            }
        });
    });

    // 等待GPU计算完成
    my_gpu_queue.wait();

    // 将结果从设备拷贝回主机
    my_gpu_queue.memcpy(C, d_C, N * sizeof(int)).wait();

    // 输出结果
    std::cout << "First 10 elements of the result vector C:\n";
    for (int i = 0; i < 10; i++) {
        std::cout << C[i] << ", ";
    }
    std::cout << "\n";

    // 释放内存
    free(A, my_gpu_queue);
    free(B, my_gpu_queue);
    free(C, my_gpu_queue);
    free(d_A, my_gpu_queue);
    free(d_B, my_gpu_queue);
    free(d_C, my_gpu_queue);

    return 0;
}
