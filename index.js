require("dotenv").config();
const express = require("express");
const cors = require("cors");
const pg = require("pg");
const app = express();
const client = require("./database/client");

app.use(cors());
app.use(express.json());
app.use(express.static("public"));
// app.use('/images', express.static('images'));

const PORT = process.env.PORT || 3001;

// GET ALL POSTS 1

app.get("/api/posts/all", (req, res) => {
  /* const page = parseInt(req.query.page) || 1;
      const offset = (6 * page) - 6; */

  const getAll = {
    /*      text:"Select * FROM posts ORDER BY id limit 6 offset $1;"
    , values: [offset]  */
    text: "SELECT p.id AS post_num, p.title, p.image_posts, p.descriptionShort, p.descriptionLong, p.date, p.rating, p.video, a.name AS author, a.image_authors, a.email, a.description FROM posts p JOIN authors a ON p.author = a.id;",
  };

  client
    .query(getAll)
    .then((data) => res.json(data.rows))
    .catch((error) => res.sendStatus(500));
});

// GET ALL POSTS 2: THROUGH PAGES

app.get("/api/posts", (req, res) => {
  console.log(req.query);

  const page = parseInt(req.query.page) || 1;
  const offset = 6 * page - 6;
  console.log(offset);
  const getAllPost = {
    text: "Select * FROM posts ORDER BY id limit 6 offset $1;",
    values: [offset],
    /*  text: "SELECT * FROM posts;" */
  };

  client

    .query(getAllPost)
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

  const getOnePostandAuthor = {
    text: "SELECT p.id AS post_num, p.title, p.image_posts, p.descriptionShort, p.descriptionLong, p.date, p.rating, p.video, a.name AS author, a.image_authors, a.email, a.description FROM posts p JOIN authors a ON p.author = a.id WHERE p.id = $1",
    values: [id],
  };

  client
    .query(getOnePostandAuthor)
    .then((data) => res.json(data.rows))
    .catch((error) => res.sendStatus(500));
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

// GET ALL POST related to its AUTHOR

app.get("/api/posts-authors/:id", (req, res) => {
  const { id } = req.params;
  console.log(id);

  const getOnePostandAuthor = {
    text: "SELECT p.id AS post_num, p.title, p.image_posts, p.descriptionShort, p.descriptionLong, p.date, p.rating, p.video, a.name AS author, a.image_authors, a.email, a.description FROM posts p JOIN authors a ON p.author = a.id WHERE a.id = $1",
    values: [id],
  };

  client
    .query(getOnePostandAuthor)
    .then((data) => res.json(data.rows))
    .catch((error) => res.sendStatus(500));
});


// GET ALL POST related to ONE TAG

app.get("/api/posts-tags/:tag", (req, res) => {
  const { tag } = req.params;
  console.log(tag);

  const getOnePostandAuthor = {
    text: 
    "SELECT  p.id AS post_num, p.title, p.image_posts, p.descriptionShort, p.descriptionLong, p.date, p.rating, t.name, a.name AS author FROM posts_tags pt JOIN tags t ON t.id=pt.tag_id JOIN posts p ON p.id=pt.post_id JOIN authors a ON p.author = a.id WHERE t.name = $1",
    values: [tag],
  };

/* SELECT p.id AS post_num, p.title, p.image_posts, p.descriptionShort, p.descriptionLong, p.date, p.rating, p.video, a.name AS author, a.image_authors, a.email, a.description FROM posts p JOIN authors a ON p.author = a.id */

  client
    .query(getOnePostandAuthor)
    .then((data) => res.json(data.rows))
    .catch((error) => res.sendStatus(500));
});

// GET ALL POST that contains a specific string of charachters in DESCRIPTION

app.get("/api/posts-description/", (req, res) => {
  const word = req.query.search;  
  /* const word= '%'+word1; */
  console.log(req.query.search);

  const getAllPostsByWord= {
    text: 
    "SELECT p.id AS post_num, p.title, p.image_posts,p.descriptionShort, p.descriptionLong, p.date, p.rating, t.name, a.name AS author FROM posts_tags pt JOIN tags t ON t.id=pt.tag_id JOIN posts p ON p.id=pt.post_id JOIN authors a ON p.author = a.id WHERE p.descriptionLong LIKE $1 OR descriptionShort LIKE $1  ",
    values: ["%"+word+"%"],
  };

  client
    .query(getAllPostsByWord)
    .then((data) => res.json(data.rows))
    .catch((error) => res.sendStatus(500));
});


// GET ALL POST that contains a specific string of charachters in TITLE

app.get("/api/posts-title/", (req, res) => {
  const word = req.query.search;  
  /* const word= '%'+word1; */
  console.log(req.query.search);

  const getAllPostsByWord= {
    text: 
    "SELECT p.id AS post_num, p.title,p.image_posts, p.descriptionShort, p.descriptionLong, p.date, p.rating, t.name, a.name AS author FROM posts_tags pt JOIN tags t ON t.id=pt.tag_id JOIN posts p ON p.id=pt.post_id JOIN authors a ON p.author = a.id WHERE p.title LIKE $1 ",
    values: ["%"+word+"%"],
  };

  client
    .query(getAllPostsByWord)
    .then((data) => res.json(data.rows))
    .catch((error) => res.sendStatus(500));
});


/* 
const authorsRouter=require('./authorsRouter.js');

const postsRouter=require('./postsRouter.js'); */
/* app.use('/posts', postsRouter); */

/* app.use('/authors', authorsRouter); */

app.listen(PORT, () => {
  console.log(`Listening on port ${PORT}`);
});
