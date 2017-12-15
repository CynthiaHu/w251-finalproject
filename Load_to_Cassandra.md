## Here is the instruction of loading data to Cassandra DB.

Make sure that cassandra is started.
```
/etc/init.d/cassandra start
systemctl start cassandra
```

First, let's save csv file into Cassandra DB. We will download one csv file of daily stock price (up to 20 years) for MSFT from Alpha. 
If below commands not working, try to save the file in the directory where cqlsh exists. In my case it's in `/usr/bin/`.
```
cd /root/finalproject
wget -O msft.csv "https://www.alphavantage.co/query?function=TIME_SERIES_DAILY_ADJUSTED&symbol=MSFT&&outputsize=full&apikey=YMKEPIY3AWI2CV5G&datatype=csv"
```

Start the cqlsh shell `cqlsh 198.23.84.68 9042` on the master node and create keyspace and table first.
```
cqlsh> create keyspace stock with replication = {'class':'SimpleStrategy', 'replication_factor':1};
cqlsh> create table stock.msft (timestamp text PRIMARY KEY, open float, high float, low float, close float, adjusted_close float, volume float, divident_amount float, split_coefficient float);
cqlsh> COPY stock.msft FROM '/root/finalproject/msft.csv' WITH HEADER = true;
cqlsh> select * from stock.msft;
```
