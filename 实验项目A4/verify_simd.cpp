#include <iostream>
#include <chrono>
#include <vector>

// 避免编译器过度优化
volatile int dummy = 0;

template<typename T>
void simple_compute(const std::vector<T>& a, const std::vector<T>& b, std::vector<T>& c, int n) {
    for(int i = 0; i < n; i++) {
        // 简单的计算: c[i] = a[i] * b[i] + a[i]
        // 使用volatile防止编译器将循环完全优化掉
        c[i] = a[i] * b[i] + a[i];
        dummy += (c[i] > T(0)) ? 1 : 0;  // 防止编译器优化掉计算
    }
}

template<typename T>
void test_type() {
    const int N = 10000000;  // 足够大的数据量
    std::vector<T> a(N, T(1.5));
    std::vector<T> b(N, T(2.0));
    std::vector<T> c(N);

    auto start = std::chrono::high_resolution_clock::now();
    
    // 重复执行100次以获得更准确的测量
    for(int i = 0; i < 100; i++) {
        simple_compute(a, b, c, N);
    }
    
    auto end = std::chrono::high_resolution_clock::now();
    auto duration = std::chrono::duration_cast<std::chrono::milliseconds>(end - start);
    
    std::cout << "Type size: " << sizeof(T) << " bytes\n";
    std::cout << "Time taken: " << duration.count() << " ms\n";
    std::cout << "Dummy value: " << dummy << "\n\n";  // 防止优化
}

int main() {
    std::cout << "Testing int32_t:\n";
    test_type<int32_t>();
    
    std::cout << "Testing float:\n";
    test_type<float>();
    
    std::cout << "Testing double:\n";
    test_type<double>();
    
    return 0;
} 