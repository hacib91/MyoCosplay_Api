'use strict';
module.exports = function(sequelize, DataTypes) {
  var tuto_ecrit = sequelize.define('tuto_ecrit', {
    titre: DataTypes.STRING,
    titre_manga: DataTypes.STRING,
 	nom_perso: DataTypes.STRING,
    description: DataTypes.STRING,
	contenu: DataTypes.STRING,
    date_crea: DataTypes.DATE,
    langue: DataTypes.STRING,
    img_pres: DataTypes.STRING,
	id_user: DataTypes.INTEGER
  },{
	  timestamps: false
  }, {
    classMethods: {
      associate: function(models) {
        // associations can be defined here
      }
    }
  });
  return tuto_ecrit;
};