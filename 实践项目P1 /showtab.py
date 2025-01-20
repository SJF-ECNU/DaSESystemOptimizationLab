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

# 3. 找到所有数据的最小时间
overall_min_time = mean_df['Time'].min()

# 4. 计算相对于整体最小时间的百分比
mean_df['Percentage Relative to Overall Min'] = ((mean_df['Time'] - overall_min_time) / overall_min_time) * 100

# 5. 将数据透视为表格
pivot_table = mean_df.pivot(index='Optimization Level', columns='Block Size', values='Percentage Relative to Overall Min')

# 6. 绘制热力图
plt.figure(figsize=(10, 6))
sns.heatmap(pivot_table, annot=True, fmt=".2f", cmap='YlGnBu', cbar_kws={'label': 'Percentage Relative to Overall Min (%)'})

# 7. 设置图表的标题和标签
plt.title('Percentage Relative to Overall Minimum Time by Block Size and Optimization Level with Grid Search', fontsize=14)
plt.xlabel('Block Size')
plt.ylabel('Optimization Level')
plt.show()
