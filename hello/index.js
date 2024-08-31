const express = require("express");
const app = express();
const port = 4445;

app.get("/", (req, res) => {
  res.send("Hello");
});

app.listen(port, () => {
  console.log(`Example app listening on port ${port}`);
});
