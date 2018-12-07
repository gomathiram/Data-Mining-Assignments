#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Thu Mar 29 17:57:07 2018

@author: gomathiramalingam
"""

import pandas as pd
gb= '~/Downloads/GBvideos.csv', nrows=1000
data= pd.read_csv(gb)
data.head()