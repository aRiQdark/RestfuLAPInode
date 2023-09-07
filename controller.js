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

exports.tampilid = function(req,res){
let id = req.params.id;
    Connection.query(
        'SELECT * FROM mahasiswa WHERE id_mahasiswa = ?',[id],function(error,rows,fields){
            if (error) {
                Connection.log(error);
            }else{
                response.ok(rows,res)
            }
        }
    )

    
    
}
exports.datafilm = function(req,res){

    Connection.query(
        'SELECT * FROM tb_film',function(error,rows,fields){
            if (error) {
                Connection.log(error);
            }else{
                response.ok(rows,res)
            }
        }
    )

    
}
exports.tampilidfilm = function(req,res){
    let id = req.params.id;
        Connection.query(
            'SELECT * FROM tb_film WHERE id_film = ?',[id],function(error,rows,fields){
                if (error) {
                    Connection.log(error);
                }else{
                    response.ok(rows,res)
                }
            }
        )
    
        
        
    }
    exports.ttampilanberdasarkangenre = function(req,res){
        let Genre = req.params.Genre;
            Connection.query(
                'SELECT * FROM tb_film WHERE Genre = ?',[Genre],function(error,rows,fields){
                    if (error) {
                        Connection.log(error);
                    }else{
                        response.ok(rows,res)
                    }
                }
            )
        
            
            
        }