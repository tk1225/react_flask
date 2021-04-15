// InputForm.jsx
import React, { useState , useEffect} from "react";

import { Input } from "@chakra-ui/react"
import { Text } from "@chakra-ui/react"
import { Button} from "@chakra-ui/react"
import {
  NumberInput,
  NumberInputField,
  NumberInputStepper,
  NumberIncrementStepper,
  NumberDecrementStepper,
} from "@chakra-ui/react"
import {Graph} from "./graph.jsx"
import {Sell} from "./sell.jsx"
import axios from "axios";

export const Input_portfolio = () => {

  //購入textbox内のものが入る
  const [value, setValue] = useState("")

  //購入textbox内のものが入る
  const [stock_amount, setAmount] = useState(100)

  //portfolioのState
  const [portfolio, setPortfolio]=useState(
    [{
    "stock": "AAPL",
    "value": 400,
  },
  {
    "stock": "TSLA",
    "value": 300
  }]
  )

  useEffect(() => { 
    //ページ更新時にバックエンドからportfolio最新を取得
        axios.post(`http://127.0.0.1:5000/portfolio/read`,
      {userid:"guest"})
      .then(function(response) {
      console.log(response.data);

      let portfolio_data=[]

      for(let k in response.data){
        console.log(k)
        console.log(response.data[k])
        const tmp={
          "stock": k,
          "value":response.data[k] ,
        }
        portfolio_data.push(tmp)

      }
      setPortfolio(portfolio_data)

  })
  
  
  }, []);

  const handleChange = (event) => setValue(event.target.value)

  const handoleamountChange = (event) => setAmount(event.target.value)

  //ボタンが押されると発火する関数
  const send_firebase=()=>{
    const tmp_portfolio=portfolio.concat()
    
    const serch_stock = value;
    try{
    const targetStock = tmp_portfolio.find((v) => v.stock === serch_stock);
    console.log(targetStock);
    targetStock.value=targetStock.value+Number(stock_amount)
    console.log(tmp_portfolio)
    setPortfolio(tmp_portfolio)
    
    //バックエンドに売買データを送る
    axios.post(`http://127.0.0.1:5000/portfolio/add`,
    { date:"2020-04-20",userid:"guest",stock:serch_stock,amount:stock_amount})
    .then(function(response) {
    console.log(response);
})

  }catch(e){

    //銘柄が新しい時
    const add_stock={
      "stock": value,
      "value": Number(stock_amount)
    }
    tmp_portfolio.push(add_stock)
    setPortfolio(tmp_portfolio)

     //バックエンドに売買データを送る
     axios.post(`http://127.0.0.1:5000/portfolio/add`,
     { date:"2020-04-20",userid:"guest",stock:serch_stock,amount:stock_amount})
     .then(function(response) {
     console.log(response);
 })


  }
    
   
  }


  return (
    <>

    <Text mb="8px">Value: {value}{stock_amount}</Text>
    <Button colorScheme="blue" onClick={send_firebase}>追加</Button>
    
    <Input
      
      value={value}
      onChange={handleChange}
      placeholder="銘柄名"
      size="sm"
    />

    <NumberInput defaultValue={100} min={0}>
        
        <NumberInputField 
         value={stock_amount}
      onChange={handoleamountChange}/>
        <NumberInputStepper>
        <NumberIncrementStepper />
        <NumberDecrementStepper />
        </NumberInputStepper>
      </NumberInput>
    
    <Graph portfolio={portfolio}/>

    <Sell portfolio={portfolio} setPortfolio={setPortfolio}/>

   
    

  </>
  );
};