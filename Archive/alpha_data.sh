# https://www.alphavantage.co/documentation/
# need to streamline the process; below download the csv files which will be saved to cassadra DB later
# shall we delete the csv files after saving?

api_key=YMKEPIY3AWI2CV5G
symbol=MSFT
interval=5min # 1min, 5min, 15min, 30min, 60min

### Stock time series - daily adjusted
# returns daily time series (date, daily open, daily high, daily low, daily close, daily volume, daily adjusted close, and split/dividend events) of the equity specified

wget -O msft.csv "https://www.alphavantage.co/query?function=TIME_SERIES_DAILY_ADJUSTED&symbol=MSFT&&outputsize=full&apikey=YMKEPIY3AWI2CV5G&datatype=csv"
