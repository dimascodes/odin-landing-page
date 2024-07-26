function getUsers(off, callback) {
        setTimeout(() => {
            const users = ['fendi', 'ucup', 'angga'];
        
        if (off) {
            callback(new Error('ranyambung'), null);
            return;
        }

        callback(null, users)

    }, 3000);
}

function usersCallBack(error, users) {
    if (error) {
        console.log('gagal', error.message);
        return;
    }

    console.log('berhasil anjay', users);
}

getUsers(false, usersCallBack);
getUsers(true, usersCallBack);