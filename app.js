const express = require('express');
const app = express();

app.get('/', (req, res) => res.sendFile(__dirname + '/index.html'));

app.get('/name', (req, res) =>
{
    let name = req.query.name
    res.send(`<h1>Hello ${name}</h1>`)
});

app.get('/current-year', (req, res) =>
{
    let year = new Date().getFullYear()
    res.send(String(year))
})

try
{
    app.listen(8080, () => console.log('Server ready'));
}
catch (error)
{
    console.log(error);
}