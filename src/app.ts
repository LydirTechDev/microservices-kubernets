import express from 'express';
import dotenv from 'dotenv';

dotenv.config();
const app = express();
const port = process.env.PORT;

app.get('/', (req, res) => {
    res.send(`Hello World! from ${process.pid}`);
});

app.listen(port, () => {

    return console.log(`Express is listening at http://localhost:${port}`);
});
