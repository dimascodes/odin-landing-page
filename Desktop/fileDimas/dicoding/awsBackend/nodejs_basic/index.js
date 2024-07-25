const { EventEmitter } = require('events');
const myEventEmitter = new EventEmitter();

const birthdayEventLIstener = (name) => {
    console.log(`happy birtday ${name}`)
}

const myEmmiter = ({name}) => {
    birthdayEventLIstener(name);
}

myEventEmitter.on('birthday', myEmmiter);
myEventEmitter.emit('birthday', { name: 'dimas' });