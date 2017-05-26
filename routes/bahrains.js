// routes/users.js
var express = require('express');
var router = express.Router();
var models = require('../models');

/* GET users listing. */
router.post('/', function(req, res) {
  models.bahrain.create({ firstName: req.body.firstName }).then(function(rows) {
                res.json({"Error" : false, "Message" : "Success", "Users" : rows});
    res.redirect('/i');
  });
});

module.exports = router;
