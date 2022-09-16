import express from 'express';
const app = express();
const port = 3000;

const memoryLeakAllocations = [];

const field = "heapUsed";
const allocationStep = 10000 * 1024; // 10MB

const TIME_INTERVAL_IN_MSEC = 40;
let gbRounded

app.get('/', (req, res) => {
    res.send('Hello World!');
});

app.listen(port, () => {

    return console.log(`Express is listening at http://localhost:${port}`);
});
