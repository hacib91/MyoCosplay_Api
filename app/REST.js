var mysql = require("mysql");

var express = require('express');
var router = express.Router();

// routes/index.js

var models = require('../models');
function REST_ROUTER(router,connection,sha1) {
    var self = this;
    self.handleRoutes(router,connection,sha1);
}



REST_ROUTER.prototype.handleRoutes= function(router,connection,sha1) {
    router.get("/",function(req,res){
            res.json({"Message" : "API MYOCOsplay is working !"});
    });
	
	router.get('/bahrain', function(req, res) {
  models.bahrain.findAll().then(function(bahrain) {

res.json({"Error" : false, "Message" : "Success", "Users" : bahrain});
  });
});
	
	router.get('/list', function(req, res) {
  models.User.findAll().then(function(users) {

res.json({"Error" : false, "Message" : "Success", "Users" : users});
  });
});
	
	router.get('/events', function(req, res) {
  models.evenements.findAll().then(function(evenements) {

res.json({"Error" : false, "Message" : "Success", "Event" : evenements});
  });
});
	
		router.get('/actus', function(req, res) {
  models.actu.findAll().then(function(actu) {

res.json({"Error" : false, "Message" : "Success", "Actu" : actu});
  });
});
	
	
	router.get('/tutos', function(req, res, next) {
  models.tuto_ecrit.findAll().then(function(tuto_ecrit) {

res.json({"Error" : false, "Message" : "Success", "Tuto" : tuto_ecrit});
  });
});
	//add users
    router.post("/users",function(req,res){
       var query = "INSERT INTO ??(??,??,??,??,??,??,??,??,??,??,??) VALUES (?,?,?,?,?,?,?,?,?,?,?)";
        var table = ["usr","login","mdp","echec_cnx","last_ip","last_co","device","email","telephone",
		"nom","prenom","tuto_langue",req.body.login,sha1(req.body.mdp),0,'125.123','2015-10-5',req.body.device,
		req.body.email,req.body.tel,req.body.nom,req.body.prenom,'[FR]'];
	 
	        query = mysql.format(query,table);
        connection.query(query,function(err,rows){
            if(err) {
               res.json({"Error" : true, "Message" : "Error executing MySQL query"});
            } else {
                res.json({"Error" : false, "Message" : "User Added ! "+req.body.email});
				
            }
        });
		
		//end
		
    });


	/*get login end*/
/*get users start*/
	   router.get("/users",function(req,res){
        var query = "SELECT * FROM ??";
        var table = ["usr"];
        query = mysql.format(query,table);
        connection.query(query,function(err,rows){
            if(err) {
                res.json({"Error" : true, "Message" : "Error executing MySQL query"});
            } else {
                res.json({"Error" : false, "Message" : "Success", "Users" : rows});
            }
        });
    });
	/*get users end*/
	
	/*get users sha1 test passport*/
	   router.get("/usr/mdp/:mdp",function(req,res){
        var query = "SELECT * FROM ?? WHERE ??=?";
        var table = ["usr","mdp", sha1(req.params.mdp)];
        query = mysql.format(query,table);
        connection.query(query,function(err,rows){
            if(err) {
                res.json({"Error" : true, "Message" : "Error executing MySQL query"});
            } else {
                res.json({"Error" : false, "Message" : "mdp correct", "Users" : rows});
            }
        });
    });
	/*get users end*/
	
	/*get users with specfic id start*/
	    router.get("/users/:id",function(req,res){
        var query = "SELECT * FROM ?? WHERE ??=?";
        var table = ["usr","id",req.params.id];
        query = mysql.format(query,table);
        connection.query(query,function(err,rows){
            if(err) {
                res.json({"Error" : true, "Message" : "Error executing MySQL query"});
            } else {
                res.json({"Error" : false, "Message" : "Success", "Users" : rows});
            }
        });
    });
	
	/*get users with specfic id end*/
	
	
	/*get users start*/
	    router.get("/users/:id",function(req,res){
        var query = "SELECT * FROM ?? WHERE ??=?";
        var table = ["usr","id",req.params.id];
        query = mysql.format(query,table);
        connection.query(query,function(err,rows){
            if(err) {
                res.json({"Error" : true, "Message" : "Error executing MySQL query"});
            } else {
                res.json({"Error" : false, "Message" : "Success", "Users" : rows});
            }
        });
    });
	
	/*update users start*/
	router.put("/users",function(req,res){
        var query = "UPDATE ?? SET ??=? ??=? WHERE ??=?";
        var table = ["usr","mdp",sha1(req.body.mdp),"email",req.body.email];
        query = mysql.format(query,table);
        connection.query(query,function(err,rows){
            if(err) {
                res.json({"Error" : true, "Message" : "Error executing MySQL query"});
            } else {
                res.json({"Error" : false, "Message" : "Updated the password for email "+req.body.email});
            }
        });
    });
	/*update users end*/
	
		/*update users start*/
	router.put("/update",function(req,res){
        var query = "UPDATE ?? SET ??=?, ??=?, ??=?, ??=? WHERE ??=?";
        var table = ["usr","tour_de_taille",req.body.tour_taille,"jambes_exterieures",req.body.jambes_ext,
					 "tour_de_poitrine",req.body.poitrine,"tour_des_hanches",req.body.hanches,"argeur_depaules",req.body.epaule,
					 "taille",req.body.taille,"poids",req.body.poids,"login",req.body.login];
        query = mysql.format(query,table);
        connection.query(query,function(err,rows){
            if(err) {
                res.json({"Error" : true, "Message" : "Error executing MySQL query"});
            } else {
                res.json({"Error" : false, "Message" : "Updated the taille for login "+req.body.login});
            }
        });
    });
	/*update users end*/
	
	/*delete users start*/
	router.delete("/users/",function(req,res){
        var query = "DELETE from ?? WHERE ??=? AND ??=?";
        var table = ["usr","mdp", sha1(req.body.mdp),"email",req.body.email];
        query = mysql.format(query,table);
        connection.query(query,function(err,rows){
            if(err) {
                res.json({"Error" : true, "Message" : "Error executing MySQL query"});
            } else {
                res.json({"Error" : false, "Message" : "Deleted the user with the id "+req.body.email});
            }
        });
    });
	/*delete users end*/
	
	
		/*get boutique start*/
	   router.get("/boutique",function(req,res){
        var query = "SELECT * FROM ??";
        var table = ["vente_cos"];
        query = mysql.format(query,table);
        connection.query(query,function(err,rows){
            if(err) {
                res.json({"Error" : true, "Message" : "Error executing MySQL query"});
            } else {
                res.json({"Error" : false, "Message" : "Success", "Boutique" : rows});
            }
        });
    });
	/*get boutique end*/
	
			/*search tutos with specfic name start*/
	    router.get("/boutique/titre/:titre",function(req,res){
        var query = "SELECT * FROM ?? WHERE ?? LIKE ?";
        var table = ["vente_cos","titre",'%'+req.params.titre+'%'];
        query = mysql.format(query,table);
        connection.query(query,function(err,rows){
            if(err) {
                res.json({"Error" : true, "Message" : "Error executing MySQL query"});
            } else {
                res.json({"Error" : false, "Message" : "Success", "Boutique" : rows});
            }
        });
    });
	
		/*get boutique start*/
	   router.get("/location",function(req,res){
        var query = "SELECT * FROM ??";
        var table = ["loca_cos"];
        query = mysql.format(query,table);
        connection.query(query,function(err,rows){
            if(err) {
                res.json({"Error" : true, "Message" : "Error executing MySQL query"});
            } else {
                res.json({"Error" : false, "Message" : "Success", "Location" : rows});
            }
        });
    });
	/*get boutique end*/
	
			/*search tutos with specfic name start*/
	    router.get("/location/titre/:titre",function(req,res){
        var query = "SELECT * FROM ?? WHERE ?? LIKE ?";
        var table = ["loca_cos","titre",'%'+req.params.titre+'%'];
        query = mysql.format(query,table);
        connection.query(query,function(err,rows){
            if(err) {
                res.json({"Error" : true, "Message" : "Error executing MySQL query"});
            } else {
                res.json({"Error" : false, "Message" : "Success", "Location" : rows});
            }
        });
    });

		/*get news with specfic id start*/
	    router.get("/actu",function(req,res){
        var query = "SELECT * FROM ?? WHERE ??=?";
        var table = ["actu","id",req.params.id];
        query = mysql.format(query,table);
        connection.query(query,function(err,rows){
            if(err) {
                res.json({"Error" : true, "Message" : "Error executing MySQL query"});
            } else {
                res.json({"Error" : false, "Message" : "Success", "Actu" : rows});
            }
        });
    });
	
	
	
	/*get news with specfic id start*/
	    router.get("/actu/:id",function(req,res){
        var query = "SELECT * FROM ?? WHERE ??=?";
        var table = ["actu","id",req.params.id];
        query = mysql.format(query,table);
        connection.query(query,function(err,rows){
            if(err) {
                res.json({"Error" : true, "Message" : "Error executing MySQL query"});
            } else {
                res.json({"Error" : false, "Message" : "Success", "Actu" : rows});
            }
        });
    });
	
	/*get news with specfic id end*/
	
		/*search tutos with specfic name start*/
	    router.get("/actu/titre/:titre",function(req,res){
        var query = "SELECT * FROM ?? WHERE ?? LIKE ?";
        var table = ["actu","FR_titre",'%'+req.params.titre+'%'];
        query = mysql.format(query,table);
        connection.query(query,function(err,rows){
            if(err) {
                res.json({"Error" : true, "Message" : "Error executing MySQL query"});
            } else {
                res.json({"Error" : false, "Message" : "Success", "Actu" : rows});
            }
        });
    });
	
	/*get event start*/
	   router.get("/event",function(req,res){
        var query = "SELECT * FROM ??";
        var table = ["evenements"];
        query = mysql.format(query,table);
        connection.query(query,function(err,rows){
            if(err) {
                res.json({"Error" : true, "Message" : "Error executing MySQL query"});
            } else {
                res.json({"Error" : false, "Message" : "Success", "Event" : rows});
            }
        });
    });
	/*get event end*/
	
	
	/*get events with specfic id start*/
	    router.get("/event/:id",function(req,res){
        var query = "SELECT * FROM ?? WHERE ??=?";
        var table = ["evenements","id",req.params.id];
        query = mysql.format(query,table);
        connection.query(query,function(err,rows){
            if(err) {
                res.json({"Error" : true, "Message" : "Error executing MySQL query"});
            } else {
                res.json({"Error" : false, "Message" : "Success", "Event" : rows});
            }
        });
    });
		/*search tutos with specfic name start*/
	    router.get("/event/titre/:titre",function(req,res){
        var query = "SELECT * FROM ?? WHERE ?? LIKE ?";
        var table = ["evenements","FR_titre",'%'+req.params.titre+'%'];
        query = mysql.format(query,table);
        connection.query(query,function(err,rows){
            if(err) {
                res.json({"Error" : true, "Message" : "Error executing MySQL query"});
            } else {
                res.json({"Error" : false, "Message" : "Success", "Event" : rows});
            }
        });
    });
	
	/*get event with specfic id end*/
	
	//add events
    router.post("/event",function(req,res){
       var query = "INSERT INTO ??(??,??,??,??,??) VALUES (?,?,?,?,?)";
        var table = ["evenements","FR_titre","FR_contenu","FR_youtube","FR_cover_img","date", 
		req.body.titre,req.body.contenu, req.body.youtube, req.body.cover,'2015-10-5'];
	        query = mysql.format(query,table);
        connection.query(query,function(err,rows){
            if(err) {
               res.json({"Error" : true, "Message" : "Error executing MySQL query"});
            } else {
                res.json({"Error" : false, "Message" : "User Added ! "+req.body.contenu});
				
            }
        });
		 });
		//add event
		

	/*get event end*/
	
			/*get tuto start*/
	   router.get("/best",function(req,res){
        var query = "SELECT * FROM ?? WHERE id BETWEEN 55 AND 58";
        var table = ["tuto_ecrit"];
        query = mysql.format(query,table);
        connection.query(query,function(err,rows){
            if(err) {
                res.json({"Error" : true, "Message" : "Error executing MySQL query"});
            } else {
                res.json({"Error" : false, "Message" : "Success", "Tuto" : rows});
            }
        });
    });
	/*get event end*/
	
		/*get tutos*/
	    router.get("/tuto",function(req,res){
        var query = "SELECT * FROM ?? WHERE ??=?";
        var table = ["tuto_ecrit","id",req.params.id];
        query = mysql.format(query,table);
        connection.query(query,function(err,rows){
            if(err) {
                res.json({"Error" : true, "Message" : "Error executing MySQL query"});
            } else {
                res.json({"Error" : false, "Message" : "Success", "Tuto" : rows});
            }
        });
    });
	/*get tutos with specfic id start*/
	    router.get("/tuto/:id",function(req,res){
        var query = "SELECT * FROM ?? WHERE ??=?";
        var table = ["tuto_ecrit","id",req.params.id];
        query = mysql.format(query,table);
        connection.query(query,function(err,rows){
            if(err) {
                res.json({"Error" : true, "Message" : "Error executing MySQL query"});
            } else {
                res.json({"Error" : false, "Message" : "Success", "Tuto" : rows});
            }
        });
    });
	
	/*search tutos with specfic name start*/
	    router.get("/tuto/titre/:titre",function(req,res){
        var query = "SELECT * FROM ?? WHERE ?? LIKE ?";
        var table = ["tuto_ecrit","titre",'%'+req.params.titre+'%'];
        query = mysql.format(query,table);
        connection.query(query,function(err,rows){
            if(err) {
                res.json({"Error" : true, "Message" : "Error executing MySQL query"});
            } else {
                res.json({"Error" : false, "Message" : "Success", "Tuto" : rows});
            }
        });
    });
	
	/*get event with specfic id end*/
	
	//add tutos
    router.post("/tuto",function(req,res){
       var query = "INSERT INTO ??(??,??,??,??,??) VALUES (?,?,?,?,?)";
        var table = ["evenements","FR_titre","FR_contenu","FR_youtube","FR_cover_img","date", 
		req.body.titre,req.body.contenu, req.body.youtube, req.body.cover,'2015-10-5'];
	        query = mysql.format(query,table);
        connection.query(query,function(err,rows){
            if(err) {
               res.json({"Error" : true, "Message" : "Error executing MySQL query"});
            } else {
                res.json({"Error" : false, "Message" : "User Added ! "+req.body.contenu});
				
            }
        });
		 });
		
	
	/*get tuto video start*/
	   router.get("/video",function(req,res){
        var query = "SELECT * FROM ??";
        var table = ["tuto_video"];
        query = mysql.format(query,table);
        connection.query(query,function(err,rows){
            if(err) {
                res.json({"Error" : true, "Message" : "Error executing MySQL query"});
            } else {
                res.json({"Error" : false, "Message" : "Success", "Tuto" : rows});
            }
        });
    });
	/*get event end*/
	
	
	/*get tutos video with specfic id start*/
	    router.get("/video/:id",function(req,res){
        var query = "SELECT * FROM ?? WHERE ??=?";
        var table = ["tuto_video","id",req.params.id];
        query = mysql.format(query,table);
        connection.query(query,function(err,rows){
            if(err) {
                res.json({"Error" : true, "Message" : "Error executing MySQL query"});
            } else {
                res.json({"Error" : false, "Message" : "Success", "Tuto" : rows});
            }
        });
    });
	
	/*search tutos video with specfic name start*/
	    router.get("/video/titre/:titre",function(req,res){
        var query = "SELECT * FROM ?? WHERE ?? LIKE ?";
        var table = ["tuto_video","titre",'%'+req.params.titre+'%'];
        query = mysql.format(query,table);
        connection.query(query,function(err,rows){
            if(err) {
                res.json({"Error" : true, "Message" : "Error executing MySQL query"});
            } else {
                res.json({"Error" : false, "Message" : "Success", "Tuto" : rows});
            }
        });
    });
	
	/*get event with specfic id end*/
	
	//add tutos video
    router.post("/video",function(req,res){
       var query = "INSERT INTO ??(??,??,??,??,??) VALUES (?,?,?,?,?)";
        var table = ["evenements","FR_titre","FR_contenu","FR_youtube","FR_cover_img","date", 
		req.body.titre,req.body.contenu, req.body.youtube, req.body.cover,'2015-10-5'];
	        query = mysql.format(query,table);
        connection.query(query,function(err,rows){
            if(err) {
               res.json({"Error" : true, "Message" : "Error executing MySQL query"});
            } else {
                res.json({"Error" : false, "Message" : "User Added ! "+req.body.contenu});
				
            }
        });
		 });
		
		
}

module.exports = REST_ROUTER;