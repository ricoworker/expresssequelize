const express = require("express");
const app = express();
const db = require("./models/index");

db.sequelize
    .sync()
    .then(() => {
        console.log("database terkoneksi");
    })
    .catch((err) => {
        console.log("Failed to sync db: " + err.message);
    });

app.listen(5000, () => {
    console.log("berjalan di port 5000");
});
