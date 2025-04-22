import pandas as pd

"""
    Source: https://www.kaggle.com/datasets/alessandrolobello/the-ultimate-earthquake-dataset-from-1990-2023
"""

earthquake_df = pd.read_csv('data/distributions/check/Eartquakes-1990-2023.csv')

earthquake_df = earthquake_df.loc[earthquake_df['state'] == ' Japan']
print(earthquake_df.head())

# Convert the 'time' column to datetime objects
earthquake_df['time'] = pd.to_datetime(earthquake_df['time'], unit='ms')

# Sort the DataFrame by time
earthquake_df = earthquake_df.sort_values(by='time')

# Calculate the time difference between consecutive earthquakes in seconds
time_diff = earthquake_df['time'].diff().dt.total_seconds()

# Create the 'Time_Since_Last_Earthquake_Seconds' column
earthquake_df['Time_Since_Last_Earthquake_Seconds'] = time_diff

# Create a sequential 'Earthquake_Number' column as the dependent variable
earthquake_df['Earthquake_Number'] = range(1, len(earthquake_df) + 1)

earthquake_df['Magnitude'] = earthquake_df['magnitudo']

# Select the two columns we need for the exponential distribution example
exponential_df = earthquake_df[[
    'Earthquake_Number', 'Time_Since_Last_Earthquake_Seconds', 'Magnitude']].dropna()

exponential_df.rename(
    columns={
        'Earthquake_Number': 'exp_earthquake_number', 'Time_Since_Last_Earthquake_Seconds': 'exp_time_since_last_earthquake_seconds',
        'Magnitude': 'exp_magnitude',
    }, inplace=True)

# Display the first few rows of the resulting DataFrame
print(exponential_df.head())

exponential_df = exponential_df[:25000]

# Save this DataFrame to a new CSV file
exponential_df.to_csv(
    'data/distributions/exponential_distribution_data.csv', index=False)
