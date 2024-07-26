const fs = require('fs');
const { resolve } = require('path');

const fileReadCallback = (error, data ) => {
    if(error) {
        console.log('gagal membaca berkas')
        return;
    }
    console.log(data);
};

fs.readFile(resolve(__dirname, 'note.txt'),'utf-8', fileReadCallback);

