import pandas as pd

"""
    Source: https://github.com/schochastics/football-data
    Download: https://github.com/schochastics/football-data/archive/refs/tags/v0.1.0.zip
    File used: football-data-0.1.0/data/results/spain.csv
"""

df = pd.read_csv('data/distributions/check/spain.csv')

df = df[['home', 'away', 'date', 'gh', 'ga']]

# df.rename(columns={'home': 'home_team', 'away': 'away_team', 'gh': 'goals_home', 'ga': 'goals_away'}, inplace=True)
df.rename(columns={
    'home': 'poisson_home_team', 'away': 'poisson_away_team', 
    'gh': 'poisson_goals_home', 'ga': 'poisson_goals_away',
    'date': 'poisson_date'
}, inplace=True)

df = df[:25000]

df.to_csv('data/distributions/poisson_distribution_data.csv', index=False)
