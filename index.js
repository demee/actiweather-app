import express from 'express';
import api from './api.js';

const app = express();
const port = process.env.PORT || 3000;

app.use('/', express.static('public'));

app.use('/api', api);

app.listen(port, () => {
  console.log(`Example app listening at http://localhost:${port}`);
})