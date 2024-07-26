const { EventEmitter } = require('events');

const birthdayEventLIstener = ( {name} ) => {
    console.log(`happy birtday ${name}`);
}

const ageNow = ({age}) => {
    console.log(`di umur ${age}tahun ini`);
}

const people = ({orang}) => {
    console.log(`aku adalah ${orang}`);
}

const myEmitter = new EventEmitter();

myEmitter.on('birthday', birthdayEventLIstener);
myEmitter.on('birthday', ageNow);
myEmitter.on('birthday', people);

myEmitter.emit('birthday', { name: 'dimas', age: '21', orang: 'yin'});