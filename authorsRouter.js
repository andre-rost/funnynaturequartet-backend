const express = require("express");
const postsRouter = express.Router();
const authors = require("./authorsRouter.js");

postsRouter.get("/:id", (req, res, next) => {
  const author = authors[req.params.id];
  if (author) {
    res.send(author);
  } else {
    res.status(404).send();
  }
});

module.exports = authorsRouter;