import subprocess
import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns
import time
import os
from datetime import datetime

def run_command(command):
    """运行命令并返回输出"""
    process = subprocess.Popen(command, shell=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
    output, error = process.communicate()
    return output.decode(), error.decode()

def get_system_info():
    """获取系统信息"""
    info = {}
    
    uname_output, _ = run_command("uname -a")
    info['OS'] = uname_output.strip()
    
    cpu_output, _ = run_command("sysctl -n machdep.cpu.brand_string")
    info['CPU'] = cpu_output.strip()

    clang_output, _ = run_command("clang --version")
    info['Compiler'] = clang_output.split('\n')[0]
    
    return info

def run_experiment(config_name, make_command):
    """运行单个实验配置"""
    times = []
    
    run_command("make clean")
    
    print(f"\n编译 {config_name}...")
    run_command(make_command)
    
    print(f"运行 {config_name} 测试...")
    for i in range(100):
        print(f"运行 #{i+1}/100")
        output, _ = run_command("./loop")
        time_str = output.split("time:")[1].split("sec")[0].strip()
        times.append(float(time_str))
    
    return times

def create_plots(results, output_dir):
    """创建性能对比图表"""
    os.makedirs(output_dir, exist_ok=True)
    
    plt.rcParams['font.sans-serif'] = ['Arial Unicode MS'] 
    plt.rcParams['axes.unicode_minus'] = False  
    
    df = pd.DataFrame(results)
    
    plt.figure(figsize=(10, 6))
    df.mean().plot(kind='bar')
    plt.title('平均执行时间对比')
    plt.ylabel('平均执行时间(秒)')
    plt.xticks(rotation=45)
    plt.tight_layout()
    plt.savefig(f'{output_dir}/performance_barplot.png')
    plt.close()

def save_results(results, system_info, output_dir):
    """保存实验结果"""

    os.makedirs(output_dir, exist_ok=True)
    
    df = pd.DataFrame(results)
    df.to_csv(f'{output_dir}/raw_results.csv')
    
    stats = pd.DataFrame({
        'mean': df.mean(),
        'std': df.std(),
        'min': df.min(),
        'max': df.max()
    })
    
    baseline_mean = stats.loc['基础版本', 'mean']
    stats['speedup'] = baseline_mean / stats['mean']
    stats['improvement_percentage'] = (stats['speedup'] - 1) * 100

    with open(f'{output_dir}/results_summary.txt', 'w') as f:
        f.write("系统信息:\n")
        for key, value in system_info.items():
            f.write(f"{key}: {value}\n")
        f.write("\n")
        
        f.write("统计结果:\n")
        f.write(stats.to_string())
        f.write("\n\n")
        
        f.write("性能提升分析:\n")
        for config in stats.index:
            if config != '基础版本':
                improvement = stats.loc[config, 'improvement_percentage']
                f.write(f"{config} 相比基础版本提升了 {improvement:.2f}%\n")

def main():
    timestamp = datetime.now().strftime("%Y%m%d_%H%M%S")
    output_dir = f"experiment_results_{timestamp}"
    
    system_info = get_system_info()
    
    experiments = {
        '基础版本': 'make',
        '向量化': 'make VECTORIZE=1',
        'AVX2': 'make VECTORIZE=1 AVX2=1'
    }
    
    results = {}
    for config_name, make_command in experiments.items():
        results[config_name] = run_experiment(config_name, make_command)
    
    create_plots(results, output_dir)
    
    save_results(results, system_info, output_dir)
    
    print(f"\n实验完成！结果保存在 {output_dir} 目录中")

if __name__ == "__main__":
    main()