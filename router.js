'use strict'

module.exports = function(app){
    var jsonku = require('./controller');

    app.route('/').get(jsonku.index);
    app.route('/film').get(jsonku.datafilm);
    app.route('/film/Genre/:Genre').get(jsonku.ttampilanberdasarkangenre);
    app.route('/film/Title/:Title').get(jsonku.ttampilanberdasarktitle);
    app.route('/film/:id').get(jsonku.tampilidfilm)
    app.route('/tampil').get(jsonku.tampilsemuadata);
    app.route('/tampil/:id').get(jsonku.tampilid);
    app.route('/tampil/:nama').get(jsonku.tampilnama);
}