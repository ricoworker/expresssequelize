const Router = require('express').Router();
const productRoutes = require('./ProductRoute');
const categoryRoutes = require('./CategoryRoute');
const userRoutes = require('./UserRoute');
const wishlistRoute = require('./WishtlistRoute');

Router.use('/product', productRoutes);
Router.use('/category', categoryRoutes);
Router.use('/user', userRoutes);
Router.use('/wishlist', wishlistRoute);

module.exports = Router;
