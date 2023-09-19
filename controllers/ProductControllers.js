const db = require('../models');
const Product = db.products;

const addProduct = async (req, res) => {
  try {
    const { name, category, price, id } = req.body;
    const newProduct = await Product.create({
      name: name,
      category: category,
      price: price,
      id: id,
    });
    res.status(200).json(newProduct);
  } catch (error) {
    res.status(500).json(error);
  }
};
const getAllProduct = async (req, res) => {
  try {
    const allProduct = await Product.findAll();
    res.status(200).json(allProduct);
  } catch (error) {
    res.status(500).json(error);
  }
};
const getProductById = async (req, res) => {
  try {
    const { id } = req.params;

    const productId = await Product.findByPk(id);

    if (!productId) {
      return res.status(404).json('Produk tidak ditemukan');
    }

    res.status(200).json(productId);
  } catch (error) {
    console.error(error);
    res.status(500).json('Terjadi kesalahan server');
  }
};

const deleteProductById = async (req, res) => {
  try {
    const { id } = req.params;

    // Find the product by ID
    console.log(id);
    const product = await Product.findByPk(id);

    // Check if the product exists
    if (!product) {
      return res.status(404).json('Product not found');
    }

    // Delete the product
    await product.destroy();

    res.status(204).json(); // Respond with a success status (204 No Content)
  } catch (error) {
    console.error(error);
    res.status(500).json('Server error');
  }
};
const updateProductbyId = async (req, res) => {
  const { price, name, category } = req.body;
  const { id } = req.params; // Extract id from req.params

  try {
    // Find the product by ID
    const product = await Product.findByPk(id);

    // Check if the product exists
    if (!product) {
      return res.status(404).json('Product not found');
    }

    // Update the product properties
    product.name = name; // Update with the new name
    product.category = category; // Update with the new category
    product.price = price; // Update with the new price

    // Save the updated product to the database
    await product.save();

    res.status(200).json(product); // Respond with the updated product
  } catch (error) {
    console.error(error);
    res.status(500).json('Server error');
  }
};

module.exports = {
  addProduct,
  getAllProduct,
  getProductById,
  deleteProductById,
  updateProductbyId,
};
