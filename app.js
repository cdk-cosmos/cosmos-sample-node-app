const express = require("express");
const app = express();
const port = 3000;

app.get("/health", (req, res) => res.sendStatus(200));
app.get("/", (req, res) => res.send("Hello World!"));
app.get("/demo", (req, res) => res.send("Hello World! from ALB(/demo)"));

app.listen(port, () => console.log(`Example app listening on port ${port}!`));
