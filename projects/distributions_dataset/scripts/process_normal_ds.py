import pandas as pd

"""
    Source: https://wiki.socr.umich.edu/index.php/SOCR_Data_Dinov_020108_HeightsWeights
    Download: https://www.kaggle.com/datasets/burnoutminer/heights-and-weights-dataset
    File used: SOCR-HeightWeight.csv
"""

df = pd.read_csv('data/SOCR-HeightWeight.csv')

df.rename(columns={'Height(Inches)': 'norm_height_inch', 'Weight(Pounds)': 'norm_weight_lbs'}, inplace=True)
df = df[['norm_height_inch', 'norm_weight_lbs']]

df = df[:25000]

df.to_csv('data/distributions/normal_distribution_data.csv', index=False)
