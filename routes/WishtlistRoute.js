const Router = require('express').Router();
const { addWhislist } = require('../controllers/WishlistController');

Router.post('/add', addWhislist);

module.exports = Router;
