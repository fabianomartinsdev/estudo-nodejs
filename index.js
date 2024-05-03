const express = require("express");
const app = express();
const port = 8081;
const handlebars = require("express-handlebars");
const Sequelize = require("sequelize");

// Config

// Template Engine
app.engine("handlebars", handlebars.engine({ defaultLayou: "main" }));
app.set("view engine", "handlebars");

// Conexão com banco de dados MySQL
const sequelize = new Sequelize("test", "root", "1234", {
  host: "localhost",
  dialect: "mysql",
});

// Rotas
app.get("/cad", (req, res) => {
  res.render("formulario");
});

app.post("/add", (req, res) => {
  res.send("Formulario recebido !");
});

app.listen(port, () => {
  console.log(`Example app listening on port ${port}`);
});
