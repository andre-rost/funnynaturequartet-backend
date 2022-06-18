const express = require("express");
const app = express();
const port = 3000;
const posts = require("./posts.js");

app.get("/", (req, res) => {
  res.send("Hello World!");
});

const postsRouter=require('/posts.js');
app.use('/posts', postsRouter);

const authorsRouter=require('/authors.js');
app.use('/authors', authorsRouter);

app.listen(port, () => {
  console.log(`Example app listening on port ${port}`);
});
