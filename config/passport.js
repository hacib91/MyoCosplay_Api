// config/passport.js

// load all the things we need
var LocalStrategy   = require('passport-local').Strategy;

// load up the user model
var mysql = require('mysql');
var bcrypt = require('bcrypt-nodejs');
//var bcrypt = require('bcrypt');
var salt = bcrypt.genSaltSync(16);
var dbconfig = require('./database');
var sha1 = require('sha1');
var sha256 = require('sha256');
var connection = mysql.createConnection(dbconfig.connection);
connection.query('USE ' + dbconfig.database);
// expose this function to our app using module.exports
module.exports = function(passport) {

    // used to serialize the user for the session
    passport.serializeUser(function(user, done) {
        done(null, user.id);
    });

    // used to deserialize the user
    passport.deserializeUser(function(id, done) {
        connection.query("SELECT * FROM usr WHERE id = ? ",[id], function(err, rows){
            done(err, rows[0]);
        });
    });

    // =========================================================================
    // LOCAL SIGNUP ============================================================
    // =========================================================================
    passport.use(
        'local-signup',
        new LocalStrategy({
            // by default, local strategy uses username and password, we will override with email
            usernameField : 'username',
            passwordField : 'password',
			emailField : 'email',
			nomField : 'nom',
			prenomField :'prenom',
			deviceField : 'device',
			telephoneField : 'telephone',
			dateField : 'date',
            passReqToCallback : true // allows us to pass back the entire request to the callback
        },
						 
        function(req, username, password, email,nom, prenom,device,telephone,date, done) {
            // find a user whose email is the same as the forms email
            // we are checking to see if the user trying to login already exists
            connection.query("SELECT * FROM usr WHERE login = ?",[username], function(err, rows) {
                if (err)
                    return done(err);
                if (rows.length) {
                    return done(null, false, req.flash('signupMessage', 'That username is already taken.'));
                } else {
					
                    // if there is no user with that username
                    // create the user
                    var newUserMysql = {
                        username: username,
                        //password: sha1(password),  // use the generateHash function in our user model
						password: bcrypt.hashSync(sha256(password), salt),  // use the generateHash function in our user model
						email: email,
						nom:nom,
						prenom:prenom,
						device:device,
						telephone:telephone,
						date:date
						
                    };

                    var insertQuery = "INSERT INTO usr ( login, mdp, email, nom, prenom, device, telephone, last_co) values (?,?,?,?,?,?,?,?)";

                    connection.query(insertQuery,[newUserMysql.username, newUserMysql.password, newUserMysql.email,newUserMysql.nom, newUserMysql.prenom,newUserMysql.device,newUserMysql.telephone,newUserMysql.date],function(err, rows) {
                        newUserMysql.id = rows.insertId;

                        return done(null, newUserMysql);
                    });
                }
            });
        })
    );

    // =========================================================================
    // LOCAL LOGIN =============================================================
    // =========================================================================

    passport.use(
        'local-login',
        new LocalStrategy({
            // by default, local strategy uses username and password, we will override with email
            usernameField : 'username',
            passwordField : 'password',
			emailField : 'email',
			nomField : 'nom',
			prenomField :'prenom',
			deviceField : 'device',
			telephoneField : 'telephone',
			dateField : 'date',
            passReqToCallback : true // allows us to pass back the entire request to the callback
        },
        function(req, username, password,email,nom, prenom,device,telephone,date, done) { // callback with email and password from our form
            connection.query("SELECT * FROM usr WHERE login = ?",[username], function(err, rows){
                if (err)
                    return done(err);
                if (!rows.length) {
                    return done(null, false, req.flash('loginMessage', 'No user found.')); // req.flash is the way to set flashdata using connect-flash
                }

                // if the user is found but the password is wrong
				if (sha1(password) !== rows[0].mdp)
               return done(null, false, req.flash('loginMessage', 'Oops! Wrong password.')); // create the loginMessage and save it to session as flashdata

                // all is well, return successful user
				return done(null, rows[0]);
				
            });
        })
    );
};
