const express=require("express");const cors=require("cors");const app=express();const PORT=process.env.PORT||5000;
app.use(cors());app.use(express.json());
app.get("/api/health",(req,res)=>res.json({status:"ok",message:"Inkly API is running"}));
app.use("/api/auth",require("./routes/authRoutes"));app.use("/api/posts",require("./routes/postRoutes"));app.use("/api/comments",require("./routes/commentRoutes"));
app.use((err,req,res,next)=>res.status(500).json({error:err.message||"Server error"}));
app.listen(PORT,()=>console.log(`Inkly API listening on http://localhost:${PORT}`));