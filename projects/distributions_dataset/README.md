The "Real World Stochastic Distributions" dataset provides examples of different statistical distributions using real-world data (lottery numbers, earthquakes, graduation rates, network packets, income data, football/soccer results).

There are at least two columns per distribution to allow for modeling in addition to EDA. 

There are 25,000 rows in the dataset.

Code to Process & Compile from Sources:

`process-compile-sources.ipynb` - [Process and Compile Source Datasets Notebook](process-compile-sources.ipynb)

## Distributions

### Normal Distribution

| Column            | Description      |
| ----------------- | ---------------- |
| norm_height_inch  | Height in Inches |
| norm_weight_lbs   | Weight in Pounds |


### Uniform Distribution

| Column                   | Description    |
| ------------------------ | -------------- |
| uniform_draw_date        | Draw Date      |
| uniform_winning_number   | Winning Number |
| uniform_draw_position    | Draw Position  |

### Exponential Distribution

| Column                                   | Description                           |
| ---------------------------------------- | ------------------------------------- |
| exp_earthquake_number                    | Earthquake Number                     |
| exp_time_since_last_earthquake_seconds   | Time Since Last Earthquake in Seconds |
| exp_magnitude                            | Magnitude of the Earthquake           |

### Poisson Distribution

| Column               | Description               |
| -------------------- | ------------------------- |
| poisson_home_team    | Home Team                 |
| poisson_away_team    | Away Team                 |
| poisson_date         | Date of Match             |
| poisson_goals_home   | Goals Scored by Home Team |
| poisson_goals_away   | Goals Scored by Away Team |

### Log Normal Distribution

| Column                   | Description         |
| ------------------------ | ------------------- |
| ln_employee_name         | Employee Name       |
| ln_job_title             | Job Title           |
| ln_annual_compensation   | Annual Compensation |

### Gamma Distribution

| Column              | Description            |
| ------------------- | ---------------------- |
| gamma_time_delta    | Time Since Last Packet |
| gamma_data_length   | TCP Packet Size        |

### Beta Distribution

| Column                     | Description                |
| -------------------------- | -------------------------- |
| beta_state                 | State                      |
| beta_year                  | Year                       |
| beta_gender                | Gender                     |
| beta_completion_100_rate   | Graduation Completion Rate |

## Sources

### Normal Distribution

SOCR height and weight dataset from University of Michigan

- Source: https://wiki.socr.umich.edu/index.php/SOCR_Data_Dinov_020108_HeightsWeights
- Download: https://www.kaggle.com/datasets/burnoutminer/heights-and-weights-dataset
- File used: SOCR-HeightWeight.csv

### Uniform Distribution

Lottery Take 5 Winning Number dataset from Data.gov

- Source: https://catalog.data.gov/dataset/lottery-take-5-winning-numbers
- Download: https://data.ny.gov/api/views/dg63-4siq/rows.csv?accessType=DOWNLOAD
- Terms of Use: https://data.ny.gov/download/77gx-ii52/application/pdf

### Exponential Distribution

The Ultimate Earthquake Dataset From 1990-2023

- Source: https://www.kaggle.com/datasets/alessandrolobello/the-ultimate-earthquake-dataset-from-1990-2023
- License: [CC0: Public Domain](https://creativecommons.org/publicdomain/zero/1.0/)

### Poisson Distribution

Schochastics's Football (Soccer) Dataset

- Source: https://github.com/schochastics/football-data
- Download: https://github.com/schochastics/football-data/archive/refs/tags/v0.1.0.zip
- File used: football-data-0.1.0/data/results/spain.csv
- License: [Open Data Commons Attribution License](https://opendatacommons.org/licenses/by/1-0/index.html)

### Log Normal Distribution

DC Public Employee Salary Dataset

- Source 1: https://catalog.data.gov/dataset/dc-public-employee-salary 
- Source 2: https://opendata.dc.gov/datasets/DCGIS::dc-public-employee-salary/explore
- Download: https://opendata.dc.gov/api/download/v1/items/c9a03cab565b44849bcfc57e63fd3591/csv?layers=35
- License: [CC BY 4.0 License](https://creativecommons.org/licenses/by/4.0)

### Gamma Distribution

MQTT Traffic Dataset

- Source: https://www.kaggle.com/datasets/cnrieiit/mqttset
- Download: `mqttdataset_reduced.csv` within `Data/FINAL_CSV/`
- License: [CC BY-NC-SA 4.0](https://creativecommons.org/licenses/by-nc-sa/4.0/)
- Attribution: [Vaccari, I.; Chiola, G.; Aiello, M.; Mongelli, M.; Cambiaso, E. MQTTset, a New Dataset for Machine Learning Techniques on MQTT. Sensors 2020, 20, 6578](https://www.mdpi.com/1424-8220/20/22/6578/htm)

### Beta Distribution

College Completion Dataset

- Source: https://www.kaggle.com/datasets/thedevastator/boost-student-success-with-college-completion-da?select=cc_state_sector_grads.csv
- Download: `cc_state_sector_grads.csv`
- License: [CC0 1.0 Universal (CC0 1.0)](https://creativecommons.org/publicdomain/zero/1.0/)
- Attribution: https://data.world/databeats/college-completion
