const db = require('../models');
const Product = db.products;

const addProduct = async (req, res) => {
  try {
    const { name, category, price } = req.body;
    const newProduct = await Product.create({
      name: name,
      category: category,
      price: price,
    });
    res.status(200).json(newProduct);
  } catch (error) {
    res.status(500).json(error);
  }
};

module.exports = addProduct;
