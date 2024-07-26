const { log } = require('console');
const { EventEmitter } = require('events');
const myEventEmitter = new EventEmitter();

const namePelanggan = ( nama ) => {
    console.log(`hai pelanggan terhormat kami, ananda ${nama} yang cakep sekali`);
}
 
const makeCoffee = ( name ) => {
    console.log(`Kopi ${name} telah dibuat!`);
};
 
const makeBill = ( price ) => {
    console.log(`Bill sebesar ${price} telah dibuat!`);
}

const menuLain = (lain) => {
    console.log(`${lain} menu yang lain`)
}
 
const jadisatu = ({ name, price, lain, nama}) => {
    namePelanggan(nama);
    makeCoffee(name);
    makeBill(price);
    menuLain(lain);
}

myEventEmitter.on('coffee-order', jadisatu);

myEventEmitter.emit('coffee-order', {nama:'kusnandar', name: 'Tubruk', price: 15000, lain: 'tidak ada' });