require("dotenv").config();
const express = require("express");
const { Pool } = require("pg");
const app = express();

const posts = require("./posts.js");
app.use(express.json());


const pool = new Pool();

const PORT = process.env.PGPORT || 3000;

// GET ALL POSTS

app.get("/api/posts", (req, res) => {
  pool
    .query("SELECT * FROM posts;")
    .then((data) => res.json(data.rows))
    .catch((error) => res.sendStatus(500));
});

// GET ONE POST

app.get("/api/posts/:id", (req, res) => {

  const { id } = req.params;

    pool
      .query("SELECT * FROM posts WHERE id = $1", [id])
      .then((data) => res.json(data.rows))
      .catch((error) => res.status(500));

  const getOnePost = {
    text: "SELECT * FROM posts WHERE id = $1",
    values: [id],
  };

  pool
    .query(getOnePost)
    .then((data) => res.json(data.rows))
    .catch((error) => res.status(500));
});

// GET ALL AUTHORS

app.get("/api/authors", (req, res) => {
  pool
    .query("SELECT * FROM authors;")
    .then((data) => res.json(data.rows))
    .catch((error) => res.sendStatus(500));
});

// GET ONE POST with its AUTHOR ATTACHED

app.get("/api/posts-authors/:id", (req, res) => {
  const { id } = req.params;

  const getOnePostandAuthor = { text: "SELECT * FROM posts JOIN authors ON posts.author_id = authors.id_authors WHERE posts.id_posts = $1" , values: [id]};

 pool.query(getOnePostandAuthor).then((data) => res.json(data.rows)).catch((error) =>
 res.sendStatus(500));
});




// GET ONE AUTHOR

app.get("/api/authors/:id", (req, res) => {

  const { id } = req.params;

    pool
      .query("SELECT * FROM authors WHERE id = $1", [id])
      .then((data) => res.json(data.rows))
      .catch((error) => res.status(500));

  const getOneAuthor = {
    text: "SELECT * FROM authors WHERE id = $1",
    values: [id],
  };

  pool
    .query(getOneAuthor)
    .then((data) => res.json(data.rows))
    .catch((error) => res.status(500));
});

});


const authorsRouter=require('./authorsRouter.js');

const postsRouter=require('./postsRouter.js');
app.use('/posts', postsRouter);


app.use('/authors', authorsRouter);

app.listen(PORT, () => {
  console.log(`Listening on port ${PORT}`);

});

