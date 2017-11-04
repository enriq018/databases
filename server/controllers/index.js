var models = require('../models');

module.exports = {
  messages: {
    options: function(req, res) {
      console.log('$$$$$$$$$$$$$$$$$$$$', 'options recieved');
      res.status(203);
      res.send();
    },

    get: function (req, res) {
      console.log('##############333333', 'get recived');
      models.messages.get(function(data) {

        res.status(200);
        res.set('Content-Type', 'application/json');
console.log(data.length, 'length', data)
        if (data !== '[]') {
          res.send(JSON.stringify({results: JSON.parse(data)}));
        } else {
          res.send('"no messages"');
        }
      });
    
    }, // a function which handles a get request for all messages
    post: function (req, res) {
      models.messages.post(req.body, function() {
        models.messages.get(function(data) {
          res.status(201);
          res.set('Content-Type', 'application/json');
          res.send(JSON.stringify({results: JSON.parse(data)}));
        });
      });
    } // a function which handles posting a message to the database
  },

  users: {
    // Ditto as above
    get: function (req, res) {},
    post: function (req, res) {}
  }
};

