import itertools
import subprocess
import numpy as np
import time
import os
import random
from tqdm import tqdm
import argparse

def compile_and_run_matrix_multiplication(source_file, optimization_level, block_size):
    executable = f'./matrix_mult_{optimization_level}'
    compile_command = ['gcc', source_file, '-o', executable, f'-O{optimization_level}']
    subprocess.run(compile_command, check=True)

    result = subprocess.run([executable, str(block_size)], capture_output=True, text=True)
    try:
        return float(result.stdout.strip())
    except ValueError:
        print(f"Invalid output from {executable} for block size {block_size}: {result.stdout.strip()}")
        return float('inf')
    finally:
        os.remove(executable)

def log_experiment_results(filename, block_size, optimization_level, time_taken):
    with open(filename, "a") as f:
        f.write(f"Block size: {block_size}, Optimization level: {optimization_level}, Time: {time_taken}\n")

def grid_search(source_file, optimization_levels, block_sizes):
    best_time = float('inf')
    best_block_size = None
    best_optimization_level = None
    start_time = time.time()

    for opt_level in optimization_levels:
        for s in block_sizes:
            time_taken = compile_and_run_matrix_multiplication(source_file, opt_level, s)
            log_experiment_results("grid_search_results.txt", s, opt_level, time_taken)
            if np.isinf(time_taken):
                continue
            if time_taken < best_time:
                best_time = time_taken
                best_block_size = s
                best_optimization_level = opt_level

    elapsed_time = time.time() - start_time
    return best_block_size, best_optimization_level, best_time, elapsed_time

def greedy_search(source_file, optimization_levels, block_sizes):
    best_time = float('inf')
    best_block_size = None
    best_optimization_level = None
    start_time = time.time()
    random.seed(time.time())
    index_random = random.randint(0, len(block_sizes) - 1)

    for opt in optimization_levels:
        s = block_sizes[index_random]
        time_taken = compile_and_run_matrix_multiplication(source_file, opt, s)
        log_experiment_results("greedy_search_results.txt", s, opt, time_taken)
        if np.isinf(time_taken):
            continue
        if time_taken < best_time:
            best_time = time_taken
            best_block_size = s
            best_optimization_level = opt

    for s in block_sizes:
        time_taken = compile_and_run_matrix_multiplication(source_file, best_optimization_level, s)
        log_experiment_results("greedy_search_results.txt", s, best_optimization_level, time_taken)
        if np.isinf(time_taken):
            continue
        if time_taken < best_time:
            best_time = time_taken
            best_block_size = s

    elapsed_time = time.time() - start_time
    return best_block_size, best_optimization_level, best_time, elapsed_time

def random_search(source_file, optimization_levels, block_sizes, K):
    best_time = float('inf')
    best_block_size = None
    best_optimization_level = None
    random.seed(36)
    start_time = time.time()

    all_combinations = list(itertools.product(optimization_levels, block_sizes))
    random_combinations = random.sample(all_combinations, K)

    for (random_optimization_level, random_block_size) in random_combinations:
        time_taken = compile_and_run_matrix_multiplication(source_file, random_optimization_level, random_block_size)
        log_experiment_results("random_search_results.txt", random_block_size, random_optimization_level, time_taken)
        if np.isinf(time_taken):
            continue
        if time_taken < best_time:
            best_time = time_taken
            best_block_size = random_block_size
            best_optimization_level = random_optimization_level

    elapsed_time = time.time() - start_time
    return best_block_size, best_optimization_level, best_time, elapsed_time

def run_experiments(source_file, algorithms, selected_algorithm, optimization_levels, block_sizes, num_trials=5):
    avg_times = {}
    
    algo_func = algorithms[selected_algorithm]
    
    times = []
    best_block_sizes = []
    best_optimization_levels = []
    best_times = []
    
    for _ in tqdm(range(num_trials)):
        best_block_size, best_optimization_level, best_time, elapsed_time = algo_func(source_file, optimization_levels, block_sizes)
        best_block_sizes.append(best_block_size)
        best_optimization_levels.append(best_optimization_level)
        best_times.append(best_time)
        times.append(elapsed_time)
    
    avg_times[selected_algorithm] = np.mean(times)
    print(f"\nAverage total time for {selected_algorithm}: {avg_times[selected_algorithm]:.6f} seconds")
    
    with open(f"BestResults/{selected_algorithm}.txt", "w") as f:
        for i in range(num_trials):
            f.write(f"Block size: {best_block_sizes[i]}, Optimization level: {best_optimization_levels[i]}, Time: {best_times[i]}\n")

    return avg_times

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Matrix Multiplication Optimization Experiment")
    parser.add_argument('--source_file', type=str, default='MatrixMultiplication.c', help='Path to the source file.')
    parser.add_argument('--optimization_levels', type=int, nargs='+', default=[0, 1, 2, 3], help='List of optimization levels.')
    parser.add_argument('--block_sizes', type=int, nargs='+', default=[8, 16, 32, 64, 128], help='List of block sizes.')
    parser.add_argument('--num_trials', type=int, default=10, help='Number of trials for each algorithm.')
    parser.add_argument('--algorithm', type=str, choices=['grid', 'greedy', 'random'], required=True, help='Search algorithm to use.')

    args = parser.parse_args()

    algorithms = {
        'grid': grid_search,
        'greedy': greedy_search,
        'random': lambda s, o, b: random_search(s, o, b, K=10),
    }

    avg_times = run_experiments(args.source_file, algorithms, args.algorithm, args.optimization_levels, args.block_sizes, args.num_trials)

    print("\nComparison of average times:")
    for algo_name, avg_time in avg_times.items():
        print(f"{algo_name}: {avg_time:.6f} seconds")
