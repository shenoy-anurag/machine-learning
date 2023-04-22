import copy
import math
from collections import Counter


def calc_mean(data):
    # Mean
    return sum(data)/len(data)


def calc_median(data_points):
    # Median
    data_points.sort()
    len_data = len(data_points)
    if len_data % 2 == 0:
        mid = len_data//2 - 1
        # print("mid, mid+1 = {}, {}".format(mid + 1, mid + 2))
        # print(data_points[mid])
        return (data_points[mid] + data_points[mid + 1]) / 2
    else:
        mid = len_data//2
        # print("mid = {}".format(mid + 1))
        return data_points[mid]


def find_mode(data):
    # Mode
    counts = Counter(data)
    mode = counts.most_common(1)[0][0]
    return mode


def calc_range(data):
    # Range
    max_v = max(data)
    min_v = min(data)
    n_range = max_v - min_v
    return min_v, max_v, n_range


def find_median_points(data):
    len_data = len(data)
    if len_data % 2 == 0:
        mid = len_data//2 - 1
        return "even", mid, mid + 1
    else:
        mid = len_data//2
        return "odd", mid, None


def calc_quartile_range(data):
    # Interquartile Range
    data_cpy = copy.deepcopy(data)
    odd_even, idx1, idx2 = find_median_points(data_cpy)
    median = calc_median(data_cpy)
    lower_values = data_cpy[:idx1]
    upper_values = data_cpy[idx1 + 1:]
    q1 = calc_median(lower_values)
    q3 = calc_median(upper_values)
    return q1, median, q3


def calc_variance(data):
    # Variance
    mean = calc_mean(data)
    differences = [x - mean for x in data]
    variance = sum([x**2 for x in differences])/len(data)
    return variance


def calc_standard_deviation(data):
    # Standard Deviation
    variance = calc_variance(data)
    st_dev = math.sqrt(variance)
    return st_dev
