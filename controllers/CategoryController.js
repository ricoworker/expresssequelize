const db = require('../models');
const Category = db.category;

const createCategory = async (req, res) => {
  try {
    const { id, name, description } = req.body;
    const newCategory = await Category.create({
      id: id,
      name: name,
      description: description,
    });
    res.status(200).json(newCategory);
  } catch (error) {
    console.log(error);
  }
};

module.exports = { createCategory };
