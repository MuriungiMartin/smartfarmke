const express = require('express');
const authRouter=require("./routes/auth");
const mongoose = require("mongoose");
const e = require('express');

const port = 3000;
const app = express();
const DB = "mongodb+srv://Martin:Cephajosh3@cluster0.lxlyqh4.mongodb.net/?retryWrites=true&w=majority";
app.use(authRouter);
mongoose.connect(DB).then(()=>{
    console.log("Connection successful");
}).catch(e =>{
    console.log(e);
});

app.listen(port,() => {
    console.log(`connected at port ${port}`)
});