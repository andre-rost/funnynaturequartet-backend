const express = require("express");
const app = express();
const port = 3000;
/* const posts = require('./posts.js'); */

app.get("/", (req, res) => {
  res.send("Hello World!");
});

const authorsRouter=require('./authorsRouter.js');

const postsRouter=require('./postsRouter.js');
app.use('/posts', postsRouter);


app.use('/authors', authorsRouter);

app.listen(port, () => {
  console.log(`Example app listening on port ${port}`);
});
