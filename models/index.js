const dbConfig = require('../config/db.config');

const Sequelize = require('sequelize');
const sequelize = new Sequelize(
  dbConfig.DB,
  dbConfig.USER,
  dbConfig.PASSWORD,
  {
    host: dbConfig.HOST,
    dialect: dbConfig.dialect,
    operatorsAliases: false,

    pool: {
      max: dbConfig.pool.max,
      min: dbConfig.pool.min,
      acquire: dbConfig.pool.acquire,
      idle: dbConfig.pool.idle,
    },
  }
);

const db = {};

db.Sequelize = Sequelize;
db.sequelize = sequelize;

db.tutorials = require('./tutorial.Model')(sequelize, Sequelize);
db.products = require('./product.Model')(sequelize, Sequelize);
db.category = require('./category.Model')(sequelize, Sequelize);
db.user = require('./user.Model')(sequelize, Sequelize);
db.wishtlist = require('./wishtlist.Model')(sequelize, Sequelize);

// db.products.associate = db.products.belongsTo(db.category, {
//   foreignKey: 'category',
// });

db.products.belongsTo(db.category, {
  foreignKey: 'category',
  as: 'category makanan',
});

// Dalam model Category (kategori)
db.category.hasMany(db.products, {
  foreignKey: 'category', // Nama kolom kunci asing di tabel produk yang merujuk ke kategori
  as: 'products', // Alias untuk hubungan, jika diperlukan
});

db.user.hasMany(db.wishtlist, {
  foreignKey: 'userId',
});

db.wishtlist.belongsTo(db.products, {
  foreignKey: 'productId',
  as: 'product', // Anda dapat menggunakan alias "product" jika diperlukan
});

module.exports = db;
