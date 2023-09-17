//koneksi

var mysql = require('mysql');

const conn = mysql.createConnection({
    host:'localhost',
    user:'root',
    password:'',
    database:'restfulapi',
});

conn.connect((err)=> {
    if (err)  {
        throw err;
        console.log('koneksi aman');
    }
});

module.exports = conn;

//tescommitasdasdasd