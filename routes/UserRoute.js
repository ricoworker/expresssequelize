const Router = require('express').Router();
const { addUser, allUser } = require('../controllers/UserController');

Router.post('/add', addUser);
Router.get('/all', allUser);

module.exports = Router;
