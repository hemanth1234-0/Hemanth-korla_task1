const express = require("express");
const app = express();

app.get("/", (req, res) => {
  res.send("Hello from Private EC2 behind ALB!");
});

app.get("/health", (req, res) => {
  res.send("ok");
});

const port = 8080;
app.listen(port, () => console.log(`Server running on port ${port}`));
