from flask import Flask
from flask import render_template
from flask import request
import json
from flask_cors import CORS
import api
from flask_sqlalchemy import SQLAlchemy
import pandas as pd
import sqlalchemy

app = Flask(__name__)
CORS(app)

#DBの設定
db_uri="mysql+pymysql://root:root@localhost/stock_data?charset=utf8"

app.config["SQLALCHEMY_DATABASE_URI"]=db_uri
app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False
db=SQLAlchemy(app)
engine=sqlalchemy.create_engine(db_uri)

class Portfolio(db.Model):
    __tablename__="portfolio"
    id=db.Column(db.Integer,primary_key=True,autoincrement=True)
    date=db.Column(db.DateTime)
    userid=db.Column(db.Text)
    stock=db.Column(db.Text)
    amount=db.Column(db.Float)

@app.route('/')
def index():
   
    return render_template("stocks.html")

@app.route('/portfolio')
def portfolio():
   
    return render_template("portfolio.html")

#検索ボタンでその銘柄のデータを渡す
@app.route("/api", methods=["GET", "POST"])
def api():
    #ここで読み込まないと動かない？
    import api
    print(request.json)
    input_data=request.json
    ticker=input_data["ticker"]
    print(ticker)
    data=api.company_key_stats(ticker)
    print(data)
    #returnにリストを渡すとエラーとなる。
    return data[0]

#検索ボックスに入れると検索候補をデータで渡す
@app.route("/api_ratio", methods=["GET", "POST"])
def api_ratio():
    #ここで読み込まないと動かない？
    import api
    print(request.json)
    input_data=request.json
    ticker=input_data["ticker"]
    print(ticker)
    data=api.company_key_ratio(ticker)
    print(data)
    #returnにリストを渡すとエラーとなる。
    return data[0]

@app.route("/api_score", methods=["GET", "POST"])
def api_score():
    #ここで読み込まないと動かない？
    import api
    print(request.json)
    input_data=request.json
    ticker=input_data["ticker"]
    print(ticker)
    data=api.company_score(ticker)
    print(data)
    #returnにリストを渡すとエラーとなる。
    return data[0] 

@app.route("/stock_price", methods=["GET", "POST"])
def stock_price():
    #ここで読み込まないと動かない？
    import api
    print(request.json)
    input_data=request.json
    ticker=input_data["ticker"]
    print(ticker)
    data=api.stock_price(ticker)
    print(data)
    #returnにリストを渡すとエラーとなる。
  
    return data

@app.route("/portfolio/add", methods=["GET", "POST"])
def portfolio_add():
    print(request.json)
    input_data=request.json

    transaction=Portfolio( userid=input_data["userid"],date=input_data["date"],stock=input_data["stock"],amount=input_data["amount"])
    db.session.add(transaction)
    db.session.commit()

    return "hello"
    
@app.route("/portfolio/read", methods=["GET", "POST"])
def portfolio_read():
    #ユーザーごとにデータを取得後、銘柄ごとに集計
    df=pd.read_sql_query("SELECT * FROM portfolio WHERE userid='guest'", con=engine)
    #portfolioを集計
    df=df.groupby('stock').sum()
    df=df.to_dict()["amount"]

    #output例{"AAPL": 500.0,"TSLA": 600.0}

    return df
 
   


  
    


if __name__ == "__main__":
    app.run(debug=True)