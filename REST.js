var mysql = require("mysql");
function REST_ROUTER(router,connection,sha1) {
    var self = this;
    self.handleRoutes(router,connection,sha1);
}

REST_ROUTER.prototype.handleRoutes= function(router,connection,sha1) {
    router.get("/",function(req,res){
            res.json({"Message" : "API MYOCOsplay is working !"});
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
		//add users
    router.post("/test",function(req,res){
       var query = "INSERT INTO ??(??,??) VALUES (?,?)";
        var table = ["test","login","mdp",req.body.login,req.body.mdp];
	 
	        query = mysql.format(query,table);
        connection.query(query,function(err,rows){
            if(err) {
               res.json({"Error" : true, "Message" : "Error executing MySQL query"});
            } else {
                res.json({"Error" : false, "Message" : "User Added ! "+req.body.login});
				
            }
        });
		
		//end
	});
	
	
	/*get login end*/
	
		/*get users start*/
	    router.post("/login/",function(req,res){
        var query = "SELECT * FROM ?? WHERE ??=?";
        var table = ["usr","email","mdp",req.body.email,req.body.mdp];
        query = mysql.format(query,table);
        connection.query(query,function(err,rows){
            if(err) {
                res.json({"Error" : true, "Message" : "Error executing MySQL query"});
            } else {
                res.json({"Error" : false, "Message" : "Success", "Users" : "the id is"+req.body.email});
            }
        });
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
        var query = "UPDATE ?? SET ??=? WHERE ??=?";
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
	/*get news start*/
	   router.get("/actu",function(req,res){
        var query = "SELECT * FROM ??";
        var table = ["actu"];
        query = mysql.format(query,table);
        connection.query(query,function(err,rows){
            if(err) {
                res.json({"Error" : true, "Message" : "Error executing MySQL query"});
            } else {
                res.json({"Error" : false, "Message" : "Success", "Actu" : rows});
            }
        });
    });
	/*get news end*/
	
	
	/*get news with specfic id start*/
	    router.get("/actu/:id",function(req,res){
        var query = "SELECT * FROM ?? WHERE ??=?";
        var table = ["actu","id",req.params.id];
        query = mysql.format(query,table);
        connection.query(query,function(err,rows){
            if(err) {
                res.json({"Error" : true, "Message" : "Error executing MySQL query"});
            } else {
                res.json({"Error" : false, "Message" : "Success", "Users" : rows});
            }
        });
    });
	
	/*get news with specfic id end*/
	
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
		
		/*get tuto start*/
	   router.get("/tuto",function(req,res){
        var query = "SELECT * FROM ??";
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
	
	
	/*get events with specfic id start*/
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
	
	/*get events with specfic name start*/
	    router.get("/tuto/titre/:titre",function(req,res){
        var query = "SELECT * FROM ?? WHERE ??=?";
        var table = ["tuto_ecrit","titre",req.params.titre];
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
	
	//add events
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
		//add event
		
		
}

module.exports = REST_ROUTER;