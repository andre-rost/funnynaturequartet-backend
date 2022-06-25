require("dotenv").config();
const express = require("express");

const pg=require('pg');
const app = express();
const client = require("./database/client");



app.use(express.json());




const PORT = process.env.PGPORT || 3000;

// GET ALL POSTS

app.get("/api/posts", (req, res) => {
  client
    .query("SELECT * FROM posts;")
    .then((data) => res.json(data.rows))
    .catch((error) => res.sendStatus(500));
});


// GET ALL AUTHORS

app.get("/api/authors", (req, res) => {
  client
    .query("SELECT * FROM authors;")
    .then((data) => res.json(data.rows))
    .catch((error) => res.sendStatus(500));
});

// GET ONE POST with its AUTHOR ATTACHED

app.get("/api/posts/:id", (req, res) => {
  const { id } = req.params;

  const getOnePostandAuthor = { text: "SELECT p.id AS post_num, p.title, p.image_posts, p.descriptionShort, p.descriptionLong, p.date, p.rating, p.video, a.name AS author, a.image_authors, a.email, a.description FROM posts p JOIN authors a ON p.author = a.id WHERE p.id = $1" , values: [id]};

 client.query(getOnePostandAuthor).then((data) => res.json(data.rows)).catch((error) =>
 res.sendStatus(500));
 
});


// GET ONE AUTHOR

app.get("/api/authors/:id", (req, res) => {

  const { id } = req.params;

  const getOneAuthor = {
    text: "SELECT * FROM authors WHERE id = $1",
    values: [id],
  };

  client
    .query(getOneAuthor)
    .then((data) => res.json(data.rows))
    .catch((error) => res.status(500));
});


const authorsRouter=require('./authorsRouter.js');

const postsRouter=require('./postsRouter.js');
app.use('/posts', postsRouter);


app.use('/authors', authorsRouter);

app.listen(PORT, () => {
  console.log(`Listening on port ${PORT}`);

});

