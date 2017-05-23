'use strict';
module.exports = function(sequelize, DataTypes) {
  var bahrain = sequelize.define('bahrain', {
    firstName: DataTypes.STRING,
    lastName: DataTypes.STRING
  }, {
    classMethods: {
      associate: function(models) {
        // associations can be defined here
      }
    }
  });
  return bahrain;
};