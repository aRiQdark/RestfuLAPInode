'use strict'

module.exports =function(app){
    var jsonku = require('./controller');

    app.route('/').get(jsonku.index);
app.route('/film').get(jsonku.datafilm);
app.route('/film/:Genre').get(jsonku.ttampilanberdasarkangenre);
app.route('/film/:id').get(jsonku.tampilidfilm)
    app.route('/tampil').get(jsonku.tampilsemuadata);
    app.route('/tampil/:id').get(jsonku.tampilid);
}