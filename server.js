// Simple express server
const express = require('express');
const app = express();
const port = process.env.PORT || 8080;

app.get('/', (req, res) => {
  res.send('Hello World! This is a clean, malware-free application.');
});

app.listen(port, () => {
  console.log(`Application listening on port ${port}`);
});