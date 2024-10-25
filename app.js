const http = require('http');

const hostname = '0.0.0.0';
const port = process.env.PORT;
const version = process.env.VERSION || '1.0.0';

const server = http.createServer((req, res) => {
  res.statusCode = 200;
  res.setHeader('Content-Type', 'text/plain');
  res.end('Hello World');
});

server.listen(port, hostname, (err) => {
  if (err) {
    console.error('Error starting server:', err);
    process.exit(1);
  }
  console.log(`Server running at http://${hostname}:${port}/`);
  console.log(`App version: ${version}`);
});

process.on('SIGINT', function() {
  console.log('Server shutting down gracefully...');
  process.exit();
});
