import pandas as pd
from scipy import stats
import matplotlib.pyplot as plt
import numpy as np

# Load CSV data
df = pd.read_csv('data/distributions/check/spain.csv')

# --- Analyze Home Goals (gh) ---
home_goals = df['gh']
print("--- Analysis of Home Goals (gh) ---")

# 1. Calculate Mean and Variance
mean_home = home_goals.mean()
variance_home = home_goals.var()
print(f"Mean Home Goals: {mean_home:.2f}")
print(f"Variance of Home Goals: {variance_home:.2f}")

# Check if mean and variance are approximately equal (a key property of Poisson)
if np.isclose(mean_home, variance_home, atol=0.1):
    print("Mean and variance of home goals are approximately equal, which is consistent with a Poisson distribution.")
else:
    print("Mean and variance of home goals are significantly different, suggesting a Poisson distribution might not be a good fit.")

# 2. Visualize the Distribution
plt.figure(figsize=(10, 5))
plt.hist(home_goals, bins=np.arange(home_goals.max() + 2) - 0.5, density=True, alpha=0.7, label='Observed Home Goals', rwidth=0.8)

# Generate Poisson distribution with the same mean
x_home = np.arange(0, home_goals.max() + 2)
pmf_home = stats.poisson.pmf(x_home, mean_home)
plt.plot(x_home, pmf_home, 'bo-', label=f'Poisson (mean={mean_home:.2f})')

plt.xlabel('Number of Home Goals')
plt.ylabel('Probability')
plt.title('Distribution of Home Goals vs. Poisson')
plt.legend()
plt.grid(axis='y', alpha=0.75)
plt.show()

# 3. Goodness-of-Fit Test (Chi-Squared)
observed_home_counts = home_goals.value_counts().sort_index()
expected_home_counts = len(home_goals) * stats.poisson.pmf(observed_home_counts.index, mean_home)

# Handle cases where expected counts are too low for Chi-Squared
min_expected = 5
low_expected = expected_home_counts < min_expected
if low_expected.any():
    print(f"\nWarning: Some expected counts for home goals are less than {min_expected}. Chi-Squared test might be unreliable.")

chi2_home, p_home = stats.chisquare(f_obs=observed_home_counts, f_exp=expected_home_counts)
print(f"\nChi-Squared Test for Home Goals:")
print(f"Chi-Squared Statistic: {chi2_home:.2f}")
print(f"P-value: {p_home:.3f}")
if p_home > 0.05:
    print("The p-value is greater than 0.05, so we fail to reject the null hypothesis that home goals follow a Poisson distribution (at the 5% significance level).")
else:
    print("The p-value is less than or equal to 0.05, so we reject the null hypothesis that home goals follow a Poisson distribution (at the 5% significance level).")

print("\n" + "-"*40 + "\n")

# --- Analyze Away Goals (ga) ---
away_goals = df['ga']
print("--- Analysis of Away Goals (ga) ---")

# 1. Calculate Mean and Variance
mean_away = away_goals.mean()
variance_away = away_goals.var()
print(f"Mean Away Goals: {mean_away:.2f}")
print(f"Variance of Away Goals: {variance_away:.2f}")

# Check if mean and variance are approximately equal
if np.isclose(mean_away, variance_away, atol=0.1):
    print("Mean and variance of away goals are approximately equal, which is consistent with a Poisson distribution.")
else:
    print("Mean and variance of away goals are significantly different, suggesting a Poisson distribution might not be a good fit.")

# 2. Visualize the Distribution
plt.figure(figsize=(10, 5))
plt.hist(away_goals, bins=np.arange(away_goals.max() + 2) - 0.5, density=True, alpha=0.7, label='Observed Away Goals', rwidth=0.8)

# Generate Poisson distribution with the same mean
x_away = np.arange(0, away_goals.max() + 2)
pmf_away = stats.poisson.pmf(x_away, mean_away)
plt.plot(x_away, pmf_away, 'ro-', label=f'Poisson (mean={mean_away:.2f})')

plt.xlabel('Number of Away Goals')
plt.ylabel('Probability')
plt.title('Distribution of Away Goals vs. Poisson')
plt.legend()
plt.grid(axis='y', alpha=0.75)
plt.show()

# 3. Goodness-of-Fit Test (Chi-Squared)
observed_away_counts = away_goals.value_counts().sort_index()
expected_away_counts = len(away_goals) * stats.poisson.pmf(observed_away_counts.index, mean_away)

# Handle cases where expected counts are too low for Chi-Squared
low_expected_away = expected_away_counts < min_expected
if low_expected_away.any():
    print(f"\nWarning: Some expected counts for away goals are less than {min_expected}. Chi-Squared test might be unreliable.")

chi2_away, p_away = stats.chisquare(f_obs=observed_away_counts, f_exp=expected_away_counts)
print(f"\nChi-Squared Test for Away Goals:")
print(f"Chi-Squared Statistic: {chi2_away:.2f}")
print(f"P-value: {p_away:.3f}")
if p_away > 0.05:
    print("The p-value is greater than 0.05, so we fail to reject the null hypothesis that away goals follow a Poisson distribution (at the 5% significance level).")
else:
    print("The p-value is less than or equal to 0.05, so we reject the null hypothesis that away goals follow a Poisson distribution (at the 5% significance level).")