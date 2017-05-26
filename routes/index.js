var express = require('express');
var router = express.Router();

// routes/index.js

var models = require('../models');

router.get('/', function(req, res, next) {
  models.User.findAll().then(function(users) {
    res.render('index', {
      title: 'MakersBnB',
      users: users
    });
  });
});


router.get('/bahrain', function(req, res, next) {
  models.bahrain.findAll().then(function(bahrain) {

res.json({"Error" : false, "Message" : "Success", "Users" : bahrain});
  });
});

router.get('/video', function(req, res, next) {
  models.tuto_video.findAll().then(function(tuto_video) {

res.json({"Error" : false, "Message" : "Success", "Tuto" : tuto_video});
  });
});
router.get('/list', function(req, res, next) {
  models.User.findAll().then(function(users) {

res.json({"Error" : false, "Message" : "Success", "Users" : users});
  });
});

router.get('/event', function(req, res, next) {
  models.evenements.findAll().then(function(evenements) {

res.json({"Error" : false, "Message" : "Success", "Event" : evenements});
  });
});
module.exports = router;