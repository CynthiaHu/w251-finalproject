
# Market Data Collection and Analysis Tool
Amit Tyagi, Cynthia Hu, John Tabbone, Matthew Holmes, Surya Nimmagadda

This is the final project for "W251: Scaling Up! Really Big Data" course, part of the UC-Berkeley Masters of Information in Data Science program.

## Introduction
Market Data Collection and Analysis Tool (MaDCaAt) is half library and half psudo-real-time analytics tool.  MadCat stores historic daily sales activity for a number of symbols and provide visualization and forecast of the stock. Please see [Vision](https://github.com/nscsekharucb/w251-finalproject/blob/master/Vision.md) for details.

## Architecture
![Data Flow](https://github.com/nscsekharucb/w251-finalproject/blob/master/Architecture.png)

## Setup
A three-node spark cluster is used for this project with ElasticSearch and distributed Cassandra DB installed. Jupyter Notebook and Kibana are used for the end user UI.
Please refer to [Cluster Installation and Configuration](https://github.com/nscsekharucb/w251-finalproject/blob/master/Cluster_Setup.md) for details.

## Data Loading
Alpha Vantage API is used to load Json objects into python for the real-time quotes and forecast per user's request. Historical stock daily data (up to 20 years) is downloaded as csv files and then saved to Cassadra Database and ElasticSearch for further processing and analysis.
Please refer to [Data Loading](https://github.com/nscsekharucb/w251-finalproject/blob/master/Load_to_Cassandra.md) for details.

## Analysis Tool
Jupyter Notebook is used as the interactive tool to get end user's input, visulize the data and provide forecast. Please see [Stock Dashboard](https://github.com/nscsekharucb/w251-finalproject/blob/master/mockup.ipynb) for example or access the server http://198.23.69.117:8888. For visualizations in kibana, please check http://198.23.69.117:5601/.

## Data Source
http://www.dxfeed.com

https://www.alphavantage.co

http://www.quandl.com
