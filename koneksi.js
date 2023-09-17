//koneksi

var mysql = require('mysql');

const conn = mysql.createConnection({
    host:'https://lazy-pear-fox-tie.cyclic.cloud/',
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