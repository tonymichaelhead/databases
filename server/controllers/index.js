var models = require('../models');
var bluebird = require('bluebird');

var userFields = ['username'];
var messageFields = ['message', 'username', 'roomname'];

module.exports = {
  messages: {
    get: function (req, res) {
      
      Message.findAll({ include: [User]})
        .complete(function(err, results) {
          //TODO handle error 
          res.json(results);
        })
    },
    post: function (req, res) {
      var params = {
        text: req.body[text], 
        username: req.body[username], 
        roomname: req.body[roomname]
      };
      message.create(params)
        .complete(function(err, results) {
          res.sendStatus(201);
        })
    }
  },

  users: { 
    get: function (req, res) {
      User.findAll()
        .complete(function(err, results) {
          //TODO handle error 
          res.json(results);
        });
    },
    post: function (req, res) {
      var params = {
        text: req.body[text], 
        username: req.body[username], 
        roomname: req.body[roomname]
      };
      User.create({username: req.body[username]})
        .complete(function(err, results) {
          res.sendStatus(201);
        })
    }
  }
};

