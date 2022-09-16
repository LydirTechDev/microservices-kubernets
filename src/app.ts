import express from 'express';
import dotenv from 'dotenv';
import os from 'os';

dotenv.config();
const app = express();
const port = process.env.PORT;

app.get('/', (req, res) => {
    console.log(os.hostname())
    res.send(`Hello World! from hostname Ahmed -> ${os.hostname()} ${process.pid}`);
});

app.listen(port, () => {

    return console.log(`Express is listening at http://localhost:${port}`);
});
