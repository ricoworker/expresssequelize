const Router = require('express').Router();
const {
  createCategory,
  getAllCategory,
} = require('../controllers/CategoryController');

Router.post('/add', createCategory);
Router.get('/all', getAllCategory);

module.exports = Router;
