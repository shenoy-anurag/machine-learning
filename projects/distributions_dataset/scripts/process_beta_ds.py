"""
    Source: https://www.kaggle.com/datasets/thedevastator/boost-student-success-with-college-completion-da?select=cc_state_sector_grads.csv
    Download: cc_state_sector_grads.csv
    License: CC0 1.0 Universal (CC0 1.0) - Public Domain Dedication
    Attribution: https://data.world/databeats/college-completion
"""

import pandas as pd

df = pd.read_csv('data/distributions/check/cc_state_sector_grads.csv')

df.rename(
    columns={
        'state': 'cc_state', 'year': 'cc_year', 'gender': 'cc_gender',
        'grad_100_rate': 'cc_completion_100_rate'
    }, inplace=True)


df = df.loc[df['cc_state'].isin(
    [
        'California', 'Texas', 'Florida', 'New York', 'Pennsylvania',
        'Illinois', 'Ohio', 'Georgia', 'North Carolina', 'Michigan',
        'New Jersey', 'Virginia', 'Washington', 'Arizona', 'Tennessee'
    ]
)]
df = df[['cc_state', 'cc_year', 'cc_gender', 'cc_completion_100_rate']]

df['cc_completion_100_rate'] = df['cc_completion_100_rate'] / 100

df.rename(
    columns={
        'cc_state': 'beta_state', 'cc_year': 'beta_year', 'cc_gender': 'beta_gender',
        'cc_completion_100_rate': 'beta_completion_100_rate'
    }, inplace=True)

print(len(df))
df = df[:25000]

print(df.head())

df.to_csv('data/distributions/beta_distribution_data.csv', index=False)
