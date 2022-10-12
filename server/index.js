const express = require('express');
const authRouter=require("./routes/auth");
const mongoose = require("mongoose");
const e = require('express');

const port = 3000;
const app = express();
<<<<<<< HEAD
const DB = "mongodb+srv://Martin:Cephajosh3@cluster0.lxlyqh4.mongodb.net/?retryWrites=true&w=majority";
app.use(express.json());
=======
const DB = "mongodb+srv://name:password@cluster0.lxlyqh4.mongodb.net/?retryWrites=true&w=majority";
>>>>>>> f7ffec078c6087b68379acc74dddf7f516488a31
app.use(authRouter);
mongoose.connect(DB).then(()=>{
    console.log("Connection successful");
}).catch(e =>{
    console.log(e);
});

app.listen(port, "0.0.0.0",() => {
    console.log(`connected at port ${port}`)
});
