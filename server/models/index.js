var db = require('../db');

module.exports = {
  messages: {
    get: function (callback) {
      db.dbConnection.query('SELECT * FROM messages', function (err, result, fields) {
        if (err) {
          console.log(err);
        }
        callback(JSON.stringify(result));
      });
    }, // a function which produces all the messages
    post: function () {
    var obj =

    db.dbConnection.query(`INSERT INTO messages(message, username, roomname)
      VALUES (${obj.text}, ${obj.username}, ${obj.roomname}`, function (err, result, fields) {
        if (err) {
          console.log(err);
        }
        callback();
      });

      } // a function which can be used to insert a message into the database
  },

  users: {
    // Ditto as above.
    get: function () {},
    post: function () {}
  }
};

