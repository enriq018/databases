var models = require('../models');

module.exports = {
  messages: {
    options: function(req, res) {
      console.log('$$$$$$$$$$$$$$$$$$$$', 'options recieved');
      res.status(203);
      res.header("Access-Control-Allow-Origin", "*");

      res.send();
    },

    get: function (req, res) {
console.log('##############333333', 'get recived')
  res.header("Access-Control-Allow-Origin", "*");


      models.messages.get(function(data){
        res.status(200);
        res.set('Content-Type', 'application/json');
        res.send(JSON.stringify({results: JSON.parse(data)}))
    })
    
    }, // a function which handles a get request for all messages
    post: function (req, res) {
      console.log('here is the body', req.body);
  res.header("Access-Control-Allow-Origin", "*");

      models.messages.post(req.body, function() {
        res.send('updated db');
      });
    } // a function which handles posting a message to the database
  },

  users: {
    // Ditto as above
    get: function (req, res) {},
    post: function (req, res) {}
  }
};

