import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns

# 1. 从TXT文件读取数据
data_file = 'grid_search_results.txt'  # 替换为你的文件路径
data_list = []

with open(data_file, 'r') as file:
    for line in file:
        parts = line.strip().split(', ')
        block_size = int(parts[0].split(': ')[1])
        opt_level = int(parts[1].split(': ')[1])
        time = float(parts[2].split(': ')[1])
        data_list.append({'Block Size': block_size, 'Optimization Level': opt_level, 'Time': time})

# 将数据转换为DataFrame
df = pd.DataFrame(data_list)

# 2. 计算每组的平均值
mean_df = df.groupby(['Block Size', 'Optimization Level'], as_index=False).mean()

# 3. 绘制图表
plt.figure(figsize=(12, 6))
sns.lineplot(data=mean_df, x='Block Size', y='Time', hue='Optimization Level', marker='o')

# 4. 设置图表的标题和标签
plt.title('Average Time for Different Block Sizes and Optimization Levels with Grid Search')
plt.xlabel('Block Size')
plt.ylabel('Average Time (seconds)')
plt.legend(title='Optimization Level')
plt.grid()
plt.show()
