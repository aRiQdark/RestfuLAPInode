'user strict';

var response = require('./res');
var Connection = require('./koneksi');
// const Connection = require('mysql/lib/Connection');

exports.index = function(req,res){
    response.ok('aplikasi rest api berjalan',res)
}

exports.tampilsemuadata = function(req,res){

    Connection.query(
        'SELECT * FROM mahasiswa',function(error,rows,fields){
            if (error) {
                Connection.log(error);
            }else{
                response.ok(rows,res)
            }
        }
    )
}