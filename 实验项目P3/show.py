import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns
# 读取 CSV 文件
data = pd.read_csv('results.csv')
# 按编译器和架构分组
pivot_table = data.pivot_table(
    index='Parameter',
    columns=['Compiler', 'Architecture'],
    values='Elapsed Time (sec)'
)

# 绘制热力图
sns.heatmap(pivot_table, annot=True, fmt=".2f", cmap='YlGnBu')
plt.title('Elapsed Time Heatmap')
plt.savefig('heatmap.png')
