"""
    Source: https://catalog.data.gov/dataset/dc-public-employee-salary
    Download: https://opendata.dc.gov/api/download/v1/items/c9a03cab565b44849bcfc57e63fd3591/csv?layers=35
    Terms of Use: Public, very few restrictions... except that it prohibits use for illegal activities (obviously).
"""

import pandas as pd

df = pd.read_csv('data/distributions/check/DC_Public_Employee_Salary.csv')

df.dropna(inplace=True)
df = df.loc[df['COMPRATE'] > 5000]

df['employee_name'] = df['FIRST_NAME'] + ' ' + df['LAST_NAME']

print(df.head())

df = df[['employee_name', 'JOBTITLE', 'COMPRATE']]
# df.rename(columns={'COMPRATE': 'annual_compensation', 'JOBTITLE': 'job_title'}, inplace=True)
df.rename(columns={
    'employee_name': 'ln_employee_name', 'COMPRATE': 'ln_annual_compensation', 'JOBTITLE': 'ln_job_title'
}, inplace=True)

df = df[:25000]

df.to_csv('data/distributions/log_normal_distribution_data.csv', index=False)
