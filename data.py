def datawarehouse
{
 int application =generate.applength();
{
  otplength = otplength.add(5);
 print(otplength)
}
import pandas as pd
from sqlalchemy import create_engine

# Extract
data = pd.read_csv('datawarehouse.csv')

# Transform
data['date'] = pd.to_datetime(data['date'])
data['datawarehouse'] = data['datawarehouse'].fillna(0)

# Load
engine = create_engine('sqlite:///data_warehouse.db')
data.to_sql('sales', engine, if_exists='replace', index=False)
