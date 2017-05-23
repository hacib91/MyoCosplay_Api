'use strict';
module.exports = function(sequelize, DataTypes) {
  var actu = sequelize.define('actu', {
    FR_titre: DataTypes.STRING,
    EN_titre: DataTypes.STRING,
    IT_titre: DataTypes.STRING,
    DE_titre: DataTypes.STRING,
    ES_titre: DataTypes.STRING,
    US_titre: DataTypes.STRING,
    FR_contenu: DataTypes.STRING,
    EN_contenu: DataTypes.STRING,
    IT_contenu: DataTypes.STRING,
    DE_contenu: DataTypes.STRING,
    ES_contenu: DataTypes.STRING,
    US_contenu: DataTypes.STRING,
    FR_accroche: DataTypes.STRING,
    EN_accroche: DataTypes.STRING,
    IT_accroche: DataTypes.STRING,
    DE_accroche: DataTypes.STRING,
    ES_accroche: DataTypes.STRING,
    US_accroche: DataTypes.STRING,
    FR_cover_img: DataTypes.STRING,
    EN_cover_img: DataTypes.STRING,
    IT_cover_img: DataTypes.STRING,
    DE_cover_img: DataTypes.STRING,
    ES_cover_img: DataTypes.STRING,
    US_cover_img: DataTypes.STRING,
    date: DataTypes.DATE
  },{
	  timestamps: false
  }, {
    classMethods: {
      associate: function(models) {
        // associations can be defined here
      }
    }
  });
  return actu;
};