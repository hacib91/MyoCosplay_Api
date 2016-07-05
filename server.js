var express = require("express");
var mysql   = require("mysql");
var bodyParser  = require("body-parser");
//var md5 = require('MD5');
var sha1 = require('sha1');
var hash = require('hash');
var rest = require("./REST.js");
var app  = express();
// ok


//ok
function REST(){
    var self = this;
    self.connectMysql();
};

REST.prototype.connectMysql = function() {
    var self = this;
    var pool      =    mysql.createPool({
        connectionLimit : 500,
  host     : '163.172.28.97',
        user     : 'yoann',
        password : 'baninou2!',
        database : 'yoann',
        debug    :  false
    });
	    pool.getConnection(function(err,connection){
        if(err) {
          self.stop(err);
        } else {
          self.configureExpress(connection);
        }
    });
}

REST.prototype.configureExpress = function(connection) {
      var self = this;
      app.use(bodyParser.urlencoded({ extended: true }));
      app.use(bodyParser.json());
      var router = express.Router();
      app.use('/', router);
      var rest_router = new rest(router,connection,sha1);
      self.startServer();
}

REST.prototype.startServer = function() {
      app.listen(process.env.PORT || 5000 ,function(){
          console.log("All right ! I am alive at Port 5000.");
      });
}

REST.prototype.stop = function(err) {
    console.log("ISSUE WITH MYSQL n" + err);
    process.exit(1);
}

new REST();