var db = require('../db');
module.exports = {
  messages: {
    get: function(callback) {
      var queryString = `SELECT m.id, u.username, m.roomname, m.text FROM messages m
  INNER JOIN users u
    ON u.id = m.id_user`;
      db.dbConnection.query(queryString, function(err, result, fields) {
        if (err) {
          console.log(err);
        }
        console.log(JSON.stringify(result));
        callback(JSON.stringify(result));
      });
    },
    post: function(obj, callback) {
      var userId = 0;
      var existQuery = `SELECT * FROM users
        WHERE username = "${obj.username}"`;
      var insertUser = `INSERT INTO users(username)
                          VALUES ("${obj.username}")`;
      db.dbConnection.query(existQuery, (err, results) => {
        if (err) {
          console.log(err);
        } else {
          // console.log(results[0].id, results.length, '---------------------------------------------^$%#&^&^%&^%&&^#^%&^%#&#%');
          if (results.length === 0) {
            db.dbConnection.query(insertUser, (err, results) => {
              if (err) {
                console.log(err);
              } else {
                db.dbConnection.query(existQuery, (err, results) => {
                  if (err) {
                    console.log(err);
                  } else {
                    var queryString = `INSERT INTO messages(text, id_user, roomname)
          VALUES ('${obj.text}', ${results[0].id}, '${obj.roomname}')`;
                    db.dbConnection.query(queryString, function(err, result, fields) {
                      if (err) {
                        console.log(err);
                      }
                      callback();
                    });
                  }
                });
              }  
            });
          } else {
            var queryString = `INSERT INTO messages(text, id_user, roomname)
        VALUES ('${obj.text}', ${results[0].id}, '${obj.roomname}')`;
            db.dbConnection.query(queryString, function(err, result, fields) {
              if (err) {
                console.log(err);
              }
              callback();
            });
          }
        }
      });

    }
    // a function which can be used to insert a message into the database
  },
  users: {
    // Ditto as above.
    get: function() {},
    post: function() {}
  }
};