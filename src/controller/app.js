const express = require("express")
const path = require(path)
const bodyParser = require("body-parser")



const app = express()

app.get('/', (req, res)=>{
    res.send('Hello World')
})
