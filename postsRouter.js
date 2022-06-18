
const express = require("express");
const postsRouter = express.Router();

const posts = require("./posts.js");

postsRouter.get("/:id", (req, res, next) => {
  const post = posts[req.params.id];
  if (post) {
    res.send(post);
  } else {
    res.status(404).send();
  }
});

module.exports = posts;