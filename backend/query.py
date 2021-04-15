from google.cloud import bigquery
from google.oauth2 import service_account
import ast

key_path = "./GBQ_key/key.json"

credentials = service_account.Credentials.from_service_account_file(
    key_path,
    scopes=["https://www.googleapis.com/auth/cloud-platform"],
)

def get_japan_stock(ticker):
   
    query=f"SELECT TO_JSON_STRING(t) FROM (SELECT *  FROM test_data.Japan WHERE number={ticker}) AS t"


    client = bigquery.Client(
        credentials=credentials,
        project=credentials.project_id,)

    query_job = client.query(query)
    rows = query_job.result()
    for row in rows:
        print(row)
    print(row[0])
    tmp = row[0]
    
    return tmp



