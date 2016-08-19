# -*- coding: utf-8 -*-
import re

def count_occurrence(dict, item):
    if item in dict:
        dict[item] += 1
    else:
        dict[item] = 1

def word_count(string):
    words  = re.findall(r"[^\W_]+", string, re.UNICODE)
    counts = {}

    for word in words:
        count_occurrence(counts, word.lower())

    return counts

