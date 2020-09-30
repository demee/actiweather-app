import express from 'express';
import fetch from 'node-fetch';

const apiKey = process.env.API_KEY;
const api = express.Router();

api.get('/current', function(req, res) {
    fetch(`https://api.openweathermap.org/data/2.5/weather?q=Dublin,IRL&appid=c081eca37ff22da09c518fef71b6a23f`)
        .then(response => response.json())
        .then(json => res.send(json));
});

export default api;