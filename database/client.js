const { Pool } = require("pg");

const pool = new Pool();
//query property with callback function. Only this is going to be exported.
module.exports = {
  query: (text, params) => {
    console.log({
      request: text,
      time: new Date().toLocaleTimeString(),
    });
    return pool.query (text, params);
  },
};
