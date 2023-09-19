const Router = require('express').Router();
const productRoutes = require('./ProductRoute');
const categoryRoutes = require('./CategoryRoute');

Router.use('/product', productRoutes);
Router.use('/category', categoryRoutes);

module.exports = Router;
