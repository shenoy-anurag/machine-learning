import pandas as pd

"""
    Source: https://catalog.data.gov/dataset/lottery-take-5-winning-numbers
    Download: https://data.ny.gov/api/views/dg63-4siq/rows.csv?accessType=DOWNLOAD
    Terms of Use: Public, very few restrictions... except that it prohibits use for illegal activities (obviously).
"""

lottery_take_5_df = pd.read_csv(
    'data/distributions/check/Lottery_Take_5_Winning_Numbers__Beginning_1992.csv')


# Function to transform a single row into multiple rows for white balls
def transform_row(row):
    draw_date = row['Draw Date']
    winning_numbers = row['Evening Winning Numbers'].strip().split()
    transformed_data = []
    for i, number in enumerate(winning_numbers):
        transformed_data.append({
            'Draw_Date': draw_date,
            'White_Ball': int(number),
            'Draw_Position': i + 1
        })
    return transformed_data


# Apply the transformation to each row of the DataFrame
transformed_list = lottery_take_5_df.apply(transform_row, axis=1).tolist()

# Flatten the list of lists into a single list of dictionaries
flat_transformed_list = [
    item for sublist in transformed_list for item in sublist]

# Create a new DataFrame from the flattened list
uniform_distribution_df = pd.DataFrame(flat_transformed_list)

# uniform_distribution_df.rename(
#     columns={
#         'Draw_Date': 'lt5_draw_date', 'White_Ball': 'lt5_winning_number',
#         'Draw_Position': 'lt5_draw_position',
#     }, inplace=True)
uniform_distribution_df.rename(
    columns={
        'Draw_Date': 'uniform_draw_date', 'White_Ball': 'uniform_winning_number',
        'Draw_Position': 'uniform_draw_position',
    }, inplace=True)

# Display the resulting DataFrame
print(uniform_distribution_df)

uniform_distribution_df = uniform_distribution_df[:25000]

# Save this DataFrame to a CSV file
uniform_distribution_df.to_csv(
    'data/distributions/uniform_distribution_data.csv', index=False)
