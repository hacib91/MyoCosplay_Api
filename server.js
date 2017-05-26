// server.js

// set up ======================================================================
// get all the tools we need
var mysql   = require("mysql");
var express  = require('express');
var session  = require('express-session');
var cookieParser = require('cookie-parser');
var bodyParser = require('body-parser');
var morgan = require('morgan');
var app      = express();
var sha1    = require('sha1');
var port     = process.env.PORT || 8080;
var rest = require("./app/REST.js");

var passport = require('passport');
var flash    = require('connect-flash');
var Sequelize = require('sequelize');
var restful   = require('sequelize-restful');
//var models = require('models');


//var users  = require('./routes/users');
// configuration ===============================================================
// connect to our database

require('./config/passport')(passport); // pass passport for configuration



// set up our express application
app.use(morgan('dev')); // log every request to the console
app.use(cookieParser()); // read cookies (needed for auth)
app.use(bodyParser.urlencoded({
	extended: true
}));
app.use(bodyParser.json());

app.set('view engine', 'ejs'); // set up ejs for templating

// required for passport
app.use(session({
	secret: 'vidyapathaisalwaysrunning',
	resave: true,
	saveUninitialized: true
 } )); // session secret
app.use(passport.initialize());
app.use(passport.session()); // persistent login sessions
app.use(flash()); // use connect-flash for flash messages stored in session


// routes ======================================================================
require('./app/routes.js')(app, passport); // load our routes and pass in our app and fully configured passport

// launch ======================================================================
app.listen(port);
console.log('The magic happens on port ' + port);



function REST(){
    var self = this;
    self.connectMysql();
};


// error handler
app.use(function(err, req, res, next) {
  // set locals, only providing error in development
  res.locals.message = err.message;
  res.locals.error = req.app.get('env') === 'development' ? err : {};

  // render the error page
  res.status(err.status || 500);
  res.render('error');
});
/*MY ORMMMMMMMMMMMMMM */
/*MY ORMMMMMMMMMMMMMM */
/*MY ORMMMMMMMMMMMMMM */
/*MY ORMMMMMMMMMMMMMM */
var sequelize = new Sequelize('yoann', 'yoann', 'baninou2!', {
  host: '163.172.28.97',
  dialect: 'mysql'
});
/*
sequelize
  .authenticate()
  .then(function(err) {
    console.log('Connection has been established successfully. wow');
  })
  .catch(function (err) {
    console.log('Unable to connect to the database:', err);
  });

var User = sequelize.define('users', {
	firstName: {
		type: Sequelize.STRING
	},
	lastName: {
		type: Sequelize.STRING
	}
});

var Project = sequelize.define('myorm', {
	Age: {
		type: Sequelize.STRING
	},

});*/

// force: true will drop the table if it already exists
/*User.sync({force: false}).then(function () {
  // Table created
  return User.create({
    firstName: 'haseeb',
    lastName: 'khalid'
  });
});*/

//app.use(restful(sequelize));
/*MY ORMMMMMMMMMMMMMM */
/*MY ORMMMMMMMMMMMMMM */
/*MY ORMMMMMMMMMMMMMM */
/*MY ORMMMMMMMMMMMMMM */


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
}

new REST();

