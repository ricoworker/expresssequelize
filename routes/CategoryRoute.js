const Router = require('express').Router();
const {
  createCategory,
} = require('../controllers/CategoryController');

Router.post('/add', createCategory);

module.exports = Router;
