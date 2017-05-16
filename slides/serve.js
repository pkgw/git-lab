#! /usr/bin/env node
// (Thankfully, node.js notices and hides hashbang lines.)
// Serve the talk over HTTP on local port 23232.

var port = 23232;

var http = require ('http');
var connect = require ('connect');
var app = connect ().use (connect.static (__dirname));
http.createServer (app).listen (port);
console.log ('connect to: http://localhost:' + port + '/slides.html');
