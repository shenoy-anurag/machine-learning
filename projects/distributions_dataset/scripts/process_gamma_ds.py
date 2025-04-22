"""
    Source: https://www.kaggle.com/datasets/cnrieiit/mqttset
    Download: mqttdataset_reduced.csv within Data/FINAL_CSV/
    License: CC BY-NC-SA 4.0.
    Attribution: 
    Vaccari, I.; Chiola, G.; Aiello, M.; Mongelli, M.; Cambiaso, E. 
    MQTTset, a New Dataset for Machine Learning Techniques on MQTT. Sensors 2020, 20, 6578
    
    # https://github.com/westermo/network-traffic-dataset/tree/main
"""

import pandas as pd

# df = pd.read_csv('data/distributions/check/output_bottom.csv')

# df = df[['sAddress', 'protocol', 'sBytesSum']] # 'sPackets'
# # df = df.loc[df['protocol'] == 'IPV4-TCP']
# df = df.loc[df['protocol'] == 'IPV4-UDP']
# df.dropna(inplace=True)

# print(df.head())

# df.rename(columns={'sAddress': 'source_ip', 'sBytesSum': 'total_sent_bytes'}, inplace=True)

df = pd.read_csv('data/distributions/check/mqttdataset_reduced.csv')

df = df.loc[df['tcp.len'] > 0]

df = df[['tcp.time_delta', 'tcp.len']]

df.rename(columns={
    'tcp.time_delta': 'gamma_time_delta', 'tcp.len': 'gamma_data_length'
}, inplace=True)

df = df[:25000]

df.to_csv('data/distributions/gamma_distribution_data.csv', index=False)
