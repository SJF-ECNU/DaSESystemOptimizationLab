#include <cstddef>
#include <iostream>

const size_t HEIGHT = 1000;
const size_t WIDTH = 1000;
const size_t blockSize = 50;
const size_t blockSizeINF = 50;

template <typename T>
struct matmul_JKI_blocked_unrolled2 {
    void operator()(const T xx[HEIGHT*WIDTH], const T yy[WIDTH*HEIGHT], T zz[HEIGHT*WIDTH], size_t rows, size_t cols) {
        size_t i, j, k, ii, kk;

        for (kk = 0; kk < cols; kk += blockSize) {
            size_t kend = kk + blockSize;
            if (kend > cols) kend = cols;
        
            for (ii = 0; ii < cols; ii += blockSizeINF) {
                size_t iend = ii + blockSizeINF;
                if (iend > cols) iend = cols;
                
                for (j = 0; j < rows; ++j) {
                    for (k = kk; k < (kend - 3); k += 4) {
                        T temp0 = xx[j*cols+k+0];
                        T temp1 = xx[j*cols+k+1];
                        T temp2 = xx[j*cols+k+2];
                        T temp3 = xx[j*cols+k+3];
                        
                        for (i = ii; i < iend; ++i) {
                            zz[j*cols+i] += yy[(k+0)*cols+i] * temp0 + 
                                          yy[(k+1)*cols+i] * temp1 + 
                                          yy[(k+2)*cols+i] * temp2 + 
                                          yy[(k+3)*cols+i] * temp3;
                        }
                    }
                    
                    for (; k < kend; ++k) {
                        T temp = xx[j*cols+k];
                        for (i = ii; i < iend; ++i) {
                            zz[j*cols+i] += yy[k*cols+i] * temp;
                        }
                    }
                }
            }
        }
    }
};

int main() {
    // 分配内存
    float *xx = new float[HEIGHT*WIDTH];
    float *yy = new float[WIDTH*HEIGHT];
    float *zz = new float[HEIGHT*WIDTH];

    // 初始化数据
    for (size_t i = 0; i < HEIGHT*WIDTH; ++i) {
        xx[i] = 1.0f;
        yy[i] = 1.0f;
        zz[i] = 0.0f;
    }

    // 执行矩阵乘法
    matmul_JKI_blocked_unrolled2<float>{}(xx, yy, zz, HEIGHT, WIDTH);

    // 清理内存
    delete[] xx;
    delete[] yy;
    delete[] zz;

    return 0;
} 