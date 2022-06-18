
const express = require("express");
const postsRouter = express.Router();

let posts = require("./posts.js");
console.log(posts[0]);

postsRouter.get("/", (req, res, next) => {
 
  if (posts) {
    res.send(posts);
  } else {
    res.status(404).send();
  }
});


postsRouter.get("/:id", (req, res, next) => {
  const post = posts[req.params.id];
  if (post) {
    res.send(post);
  } else {
    res.status(404).send();
  }
});

module.exports = postsRouter;