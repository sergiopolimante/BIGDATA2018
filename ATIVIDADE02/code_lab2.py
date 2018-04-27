# -*- coding: utf-8 -*-
"""
Created on Tue Apr 24 12:50:15 2018

@author: sergi
"""

from pyspark import SparkContext
sc =SparkContext()


import os.path
fileName = os.path.join('Data', 'millionsong.txt')

numPartitions = 2
rawData = sc.textFile(fileName, numPartitions)

numPoints = rawData.count()
print (numPoints)
samplePoints = rawData.take(5)
print (samplePoints)