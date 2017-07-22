var db = require('../db');

module.exports = {
  messages: {
    get: function () {
      //query the chat database
      
      db.connect();
      
      let queryString = 'SELECT * FROM messages';
      
      db.query(queryString, (err, rows, fields) => {
        if (err) throw err;

        for (let i in rows) {
          console.log('Da rows are: ' rows[i].message)
        }
      });

      connection.end();
    }, // a function which produces all the messages
    post: function () {} // a function which can be used to insert a message into the database
  },

  users: {
    // Ditto as above.
    get: function () {},
    post: function () {}
  }
};

