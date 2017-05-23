// models/listing.js

module.exports = function(sequelize, DataTypes) {
  var Listing = sequelize.define('Listing', {
    title: DataTypes.STRING,
    description: DataTypes.TEXT
  }, {
    classMethods: {
      associate: function(models) {

		  Listing.belongsTo(models.bahrain);
      }
    }
  });
  return Listing;
};