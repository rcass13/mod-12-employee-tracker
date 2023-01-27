var mysql = require("mysql2");
var inquirer = require("inquirer");
var console_table = require("console.table");


var connection = mysql.createConnection({

  host: "127.0.0.1",
  // port
  port: 3001,
  // username
  user: "root",
  // password
  password: "",
  database: "employee_tracker",
  port: '/var/run/mysqld/mysqld.sock'
});


