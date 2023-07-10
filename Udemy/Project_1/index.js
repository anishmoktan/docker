const express = require('express');

const app = express();

app.get('/', (req, res) => {
    res.send('Hi, there');
});
app.get('/home', (req, res) => {
    res.send('Home Page');
});

app.listen(8080, () => {
    console.log('Listening on port 8080');
});