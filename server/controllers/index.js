var models = require('../models');

module.exports = {
  messages: {
    get: function (req, res) {
      models.messages.get(function(data){
        // res.sendStatus(200);
        res.set('Content-Type', 'application/json');
        res.send(data)
    })
    
    }, // a function which handles a get request for all messages
    post: function (req, res) {
      console.log('here is the body', req.body);



      res.send('recieved');
    } // a function which handles posting a message to the database
  },

  users: {
    // Ditto as above
    get: function (req, res) {},
    post: function (req, res) {}
  }
};

