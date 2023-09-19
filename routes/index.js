const Router = require('express').Router();
const addProduct = require('../controllers');

Router.use('/addproduct', addProduct);

module.exports = Router;
