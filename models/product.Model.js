module.exports = (sequelize, Sequelize) => {
  const Products = sequelize.define('products', {
    id: {
      type: Sequelize.INTEGER,
      primaryKey: true,
      autoIncrement: true,
    },
    name: {
      type: Sequelize.STRING,
      allowNull: false,
    },
    category: {
      type: Sequelize.STRING,
      allowNull: false,
    },
    price: {
      type: Sequelize.INTEGER,
      allowNull: false,
    },
  });

  // Define the association
  // Products.belongsTo(CategoryModel, {
  //   foreignKey: 'categoryId', // The foreign key in the Products table
  //   as: 'category', // Alias for the association
  // });



  return Products;
};
