var mysql      = require('mysql');
var connection = mysql.createConnection({
    host     : 'localhost',
    user     : 'root',
    password : '123456',
    database : 'ARISdb'
});

connection.connect();

connection.query('SELECT * FROM Model', function(err, rows, fields) {
    if (err) throw err;
    console.log(rows);
});

connection.end();