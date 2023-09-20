const db = require('../models');
const User = db.user;

const addUser = async (req, res) => {
  try {
    const { name, email } = req.body;
    const newUser = await User.create({ name: name, email: email });
    res.status(200).json(newUser);
  } catch (error) {
    console.log(error);
  }
};
const allUser = async (req, res) => {
  try {
    const all = await User.findAll();
    res.status(200).json(all);
  } catch (error) {
    console.log(error);
  }
};

module.exports = { addUser, allUser };
