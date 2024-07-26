const fs = require('fs');
const { resolve } = require('path');

const readableStream = fs.createReadStream(resolve('./stream/input.txt'), {
    highWaterMark: 15,
});

const writableStream = fs.createWriteStream(resolve('./stream/output.txt'));

readableStream.on('readable', () => {
    try {
        writableStream.write(`${readableStream.read()}\n`);
    } catch(error) {
        // catch the error when the chunk cannot be read.
    }
});


 
readableStream.on('end', () => {
    writableStream.end();
});