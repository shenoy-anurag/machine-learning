"""
    Compile all individual CSVs into one final dataset.
"""

import pandas as pd

normal_df = pd.read_csv('data/distributions/normal_distribution_data.csv')
uniform_df = pd.read_csv('data/distributions/uniform_distribution_data.csv')
exponential_df = pd.read_csv(
    'data/distributions/exponential_distribution_data.csv')
poisson_df = pd.read_csv('data/distributions/poisson_distribution_data.csv')
ln_df = pd.read_csv('data/distributions/log_normal_distribution_data.csv')
gamma_df = pd.read_csv('data/distributions/gamma_distribution_data.csv')
beta_df = pd.read_csv('data/distributions/beta_distribution_data.csv')

final_df = pd.concat(
    [
        normal_df, uniform_df, exponential_df, poisson_df, ln_df, gamma_df, beta_df
    ], axis=1
)

final_df.to_csv('data/distributions/real_world_distributions.csv', index=False)
