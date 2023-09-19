const Router = require('express').Router();
const {
  addProduct,
  getAllProduct,
  getProductById,
  deleteProductById,
  updateProductbyId,
} = require('../controllers/ProductControllers');

Router.post('/addproduct', addProduct);
Router.get('/allproduct', getAllProduct);
Router.get('/product/:id', getProductById);
Router.delete('/product/:id', deleteProductById);
Router.put('/editproduct/:id', updateProductbyId);

module.exports = Router;
