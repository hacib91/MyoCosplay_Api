'use strict';
module.exports = function(sequelize, DataTypes) {
  var tuto_video = sequelize.define('tuto_video', {
    titre: DataTypes.STRING,
    titre_manga: DataTypes.STRING,
    video: DataTypes.STRING,
    description: DataTypes.STRING,
    intro: DataTypes.STRING,
    nom_perso: DataTypes.STRING,
    date_crea: DataTypes.DATE,
    langue: DataTypes.STRING,
    img_pres: DataTypes.STRING
  },{
	  timestamps: false
  }, {
    classMethods: {
      associate: function(models) {
        // associations can be defined here
      }
    }
  });
  return tuto_video;
};