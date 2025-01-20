import matplotlib.pyplot as plt
import numpy as np
import re
import matplotlib.font_manager as fm
import platform

def parse_report(filename):
    with open(filename, 'r') as f:
        content = f.read()
    
    compiler = re.search(r'##Compiler: (.+)', content).group(1)
    opt_level = re.search(r'##CFlags: .+ (-O\d)', content).group(1)
    
    results = {}
    for dtype in ['int32_t', 'float', 'double']:
        pattern = rf'test\s+description\s+absolute\s+operations\s+ratio with.*?{dtype}.*?\n(.*?)Total absolute time'
        section = re.search(pattern, content, re.DOTALL).group(1)
        
        data = []
        for line in section.strip().split('\n'):
            if line.strip():
                parts = line.split('"')
                if len(parts) >= 2:
                    name = parts[1].strip()
                    ops = float(line.split('M')[0].split()[-1])
                    data.append((name, ops))
        
        results[dtype] = data
    
    return compiler, opt_level, results

def setup_chinese_font():
    system = platform.system()
    if system == 'Windows':
        plt.rcParams['font.sans-serif'] = ['Microsoft YaHei']
    elif system == 'Linux':
        plt.rcParams['font.sans-serif'] = ['WenQuanYi Micro Hei', 'DejaVu Sans']
    elif system == 'Darwin':
        plt.rcParams['font.sans-serif'] = ['PingFang HK', 'Arial Unicode MS']
    
    try:
        plt.rcParams['axes.unicode_minus'] = False
        fig = plt.figure(figsize=(1, 1))
        fig.text(0, 0, '测试', fontsize=1)
        plt.close()
        return True
    except:
        plt.rcParams['font.sans-serif'] = ['DejaVu Sans']
        return False

def plot_by_datatype(results_dict, use_chinese):
    """按数据类型绘制性能对比图"""
    for dtype in ['int32_t', 'float', 'double']:
        plt.figure(figsize=(15, 8))
        ax = plt.gca()
        
        for j, (report, results) in enumerate(results_dict.items()):
            compiler, opt_level = results['compiler'], results['opt_level']
            label = f'{compiler} {opt_level}'
            
            names = [x[0].replace(f"{dtype} matrix multiply ", "") for x in results[dtype]]
            ops = [x[1] for x in results[dtype]]
            
            x = np.arange(len(names))
            ax.bar(x + j*0.15, ops, 0.15, label=label, alpha=0.8)
        
        if use_chinese:
            title = f'{dtype} 矩阵乘法性能比较'
            xlabel = '实现方法'
            ylabel = '每秒运算次数 (M ops/s)'
        else:
            title = f'{dtype} Matrix Multiplication Performance Comparison'
            xlabel = 'Implementation Method'
            ylabel = 'Operations per Second (M ops/s)'
        
        ax.set_title(title, fontsize=14, pad=20)
        ax.set_xlabel(xlabel, fontsize=12)
        ax.set_ylabel(ylabel, fontsize=12)
        ax.set_xticks(x + 0.3)
        ax.set_xticklabels(names, rotation=45, ha='right')
        ax.legend(bbox_to_anchor=(1.05, 1), loc='upper left')
        ax.grid(True, alpha=0.3)
        
        plt.tight_layout()
        plt.savefig(f'matrix_multiply_performance_{dtype}.png', dpi=300, bbox_inches='tight')
        plt.close()

def plot_compiler_comparison(results_dict, use_chinese):
    """比较不同编译器在各优化级别下的性能"""
    plt.figure(figsize=(12, 6))
    compilers = ['gcc', 'clang']
    opt_levels = ['O0', 'O1', 'O2']
    x = np.arange(len(opt_levels))
    width = 0.35
    
    for i, compiler in enumerate(compilers):
        avg_perf = []
        for opt in opt_levels:
            # 计算该编译器在特定优化级别下所有测试的平均性能
            key = f'report.txt.{compiler}-{opt}'
            if key in results_dict:
                all_ops = []
                for dtype in ['int32_t', 'float', 'double']:
                    all_ops.extend([x[1] for x in results_dict[key][dtype]])
                avg_perf.append(np.mean(all_ops))
            else:
                avg_perf.append(0)
        
        plt.bar(x + i*width, avg_perf, width, label=compiler)
    
    if use_chinese:
        title = '不同编译器在各优化级别下的平均性能'
        xlabel = '优化级别'
        ylabel = '平均每秒运算次数 (M ops/s)'
    else:
        title = 'Average Performance by Compiler and Optimization Level'
        xlabel = 'Optimization Level'
        ylabel = 'Average Operations per Second (M ops/s)'
    
    plt.title(title, fontsize=14, pad=20)
    plt.xlabel(xlabel, fontsize=12)
    plt.ylabel(ylabel, fontsize=12)
    plt.xticks(x + width/2, opt_levels)
    plt.legend()
    plt.grid(True, alpha=0.3)
    
    plt.tight_layout()
    plt.savefig('compiler_comparison.png', dpi=300, bbox_inches='tight')
    plt.close()

def plot_implementation_comparison(results_dict, use_chinese):
    """比较不同实现方法的性能"""
    # 获取所有实现方法名称
    implementations = set()
    for results in results_dict.values():
        for dtype in ['int32_t', 'float', 'double']:
            implementations.update(x[0].replace(f"{dtype} matrix multiply ", "") for x in results[dtype])
    implementations = sorted(list(implementations))
    
    plt.figure(figsize=(15, 8))
    x = np.arange(len(implementations))
    
    for dtype in ['int32_t', 'float', 'double']:
        # 计算每种实现方法在所有编译器和优化级别下的平均性能
        avg_perf = []
        for impl in implementations:
            perf_values = []
            for results in results_dict.values():
                for name, ops in results[dtype]:
                    if name.replace(f"{dtype} matrix multiply ", "") == impl:
                        perf_values.append(ops)
            avg_perf.append(np.mean(perf_values))
        
        plt.plot(x, avg_perf, marker='o', label=dtype)
    
    if use_chinese:
        title = '不同实现方法的平均性能比较'
        xlabel = '实现方法'
        ylabel = '平均每秒运算次数 (M ops/s)'
    else:
        title = 'Average Performance by Implementation Method'
        xlabel = 'Implementation Method'
        ylabel = 'Average Operations per Second (M ops/s)'
    
    plt.title(title, fontsize=14, pad=20)
    plt.xlabel(xlabel, fontsize=12)
    plt.ylabel(ylabel, fontsize=12)
    plt.xticks(x, implementations, rotation=45, ha='right')
    plt.legend()
    plt.grid(True, alpha=0.3)
    
    plt.tight_layout()
    plt.savefig('implementation_comparison.png', dpi=300, bbox_inches='tight')
    plt.close()

def create_visualization():
    reports = [
        'report.txt.gcc-O0', 'report.txt.gcc-O1', 'report.txt.gcc-O2',
        'report.txt.clang-O0', 'report.txt.clang-O1', 'report.txt.clang-O2'
    ]
    
    # 设置中文字体
    use_chinese = setup_chinese_font()
    
    # 解析所有报告
    results_dict = {}
    for report in reports:
        compiler, opt_level, results = parse_report(report)
        results_dict[report] = {
            'compiler': compiler,
            'opt_level': opt_level,
            'int32_t': results['int32_t'],
            'float': results['float'],
            'double': results['double']
        }
    
    # 生成不同视角的可视化
    plot_by_datatype(results_dict, use_chinese)
    plot_compiler_comparison(results_dict, use_chinese)
    plot_implementation_comparison(results_dict, use_chinese)

if __name__ == '__main__':
    create_visualization() 