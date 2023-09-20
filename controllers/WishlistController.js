const db = require('../models');
const Whislist = db.wishtlist;

const addWhislist = async (req, res) => {
  try {
    const { userId, productId } = req.body;
    const newWhislist = await Whislist.create({
      userId: userId,
      productId: productId,
    });
    res.status(200).json(newWhislist);
  } catch (error) {
    console.log( 'eror whistlist');
  }
};

module.exports = { addWhislist };
