module.exports = (sequelize, Sequelize) => {
  const WishlistProduct = sequelize.define('wishlistProduct', {
    // Tambahkan atribut yang sesuai dengan kebutuhan Anda di sini
    id: {
      type: Sequelize.INTEGER,
      primaryKey: true,
      autoIncrement: true,
    },
    // Kolom kunci asing yang merujuk ke tabel User
    userId: {
      type: Sequelize.INTEGER,
      allowNull: false,
      references: {
        model: 'Users',
        key: 'id',
      },
    },
    // Kolom kunci asing yang merujuk ke tabel Product
    productId: {
      type: Sequelize.INTEGER,
      allowNull: false,
      references: {
        model: 'Products',
        key: 'id',
      },
    },
  });

  return WishlistProduct;
};
