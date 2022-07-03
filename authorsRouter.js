/* const express = require("express");
const authorsRouter = express.Router();

const authors = require("./authors.js");

authorsRouter.get("/:id", (req, res, next) => {
  const author = authors[req.params.id];
  if (author) {
    res.send(author);
  } else {
    res.status(404).send();
  }
});

module.exports = authorsRouter; */