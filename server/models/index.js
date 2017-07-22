var db = require('../db');
const request = require('request-promise')  

module.exports = {
  messages: {
    get: function (callback) {
      
      const options = {  
        method: 'GET',
        uri: 'my server url?'
      };
    
      request(options)  
        .then(function (response) {
          // Request was successful, use the response object at will
          console.log('we got da response: ', response);
        })
        .catch(function (err) {
          console.log('yo you got an error dawg');
        })

    }, // a function which produces all the messages
    
    post: function (callback) {
      const options = {  
        method: 'POST',
        uri: 'somedatabaseurl',
        body: {
          foo: 'bar'
        },
        json: true 
          // JSON stringifies the body automatically
      };
      // ​
      request(options)  
        .then(function (response) {
          console.log('SUCCESS WAHOOOO');
        })
        .catch(function (err) {
          console.log('you got hosed bruh');
        })
    } // a function which can be used to insert a message into the database
  },

  users: {
    // Ditto as above.
    get: function (callback) {
      
      const options = {  
        method: 'GET',
        uri: 'my server url?'
      };
    
      request(options)  
        .then(function (response) {
          // Request was successful, use the response object at will
          console.log('we got da response: ', response);
        })
        .catch(function (err) {
          console.log('yo you got an error dawg');
        })

    }, // a function which produces all the messages
    
    post: function (callback) {
      const options = {  
        method: 'POST',
        uri: 'somedatabaseurl',
        body: {
          foo: 'bar'
        },
        json: true 
          // JSON stringifies the body automatically
      };
      // ​
      request(options)  
        .then(function (response) {
          console.log('SUCCESS WAHOOOO');
        })
        .catch(function (err) {
          console.log('you got hosed bruh');
        })
    }
  }
};

