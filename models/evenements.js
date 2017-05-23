'use strict';
module.exports = function(sequelize, DataTypes) {
  var evenements = sequelize.define('evenements', {
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
    FR_youtube: DataTypes.STRING,
    EN_youtube: DataTypes.STRING,
    IT_youtube: DataTypes.STRING,
    DE_youtube: DataTypes.STRING,
    ES_youtube: DataTypes.STRING,
    US_youtube: DataTypes.STRING,
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
  return evenements;
};