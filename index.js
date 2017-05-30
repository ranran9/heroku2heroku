const http = require('http');
const cloudcmd = require('cloudcmd');
const io = require('socket.io');
const app = require('express')();

const port = process.env.PORT || 3000;
const prefix = '/cloudcmd';

const server = http.createServer(app);
const socket = io.listen(server, {
    path: `${prefix}/socket.io`
});

const config = {
prefix            : prefix,/* base URL or function which returns base URL (optional)   */
auth              : process.env.CLOUDCMD_AUTH === 'true' ? true : false,    /* enable http authentication               */
username          : process.env.CLOUDCMD_USER_ID || 'root',   /* username for authentication              */
password          : process.env.CLOUDCMD_PASS || 'toor',   /* password hash in sha-1 for authentication*/
algo              : 'sha512WithRSAEncryption', /* cryptographic algorithm */
root              : '/',      /* root directory                           */
terminal          : true,    /* disable terminal                         */
terminalPath      : 'gritty'       /* path of a terminal                       */
};

const filePicker = {
    data: {
        FilePicker: {
            key: 'key',
        }
    }
};

// override option from json/modules.json
const modules = {filePicker};

app.use(cloudcmd({
    socket,  /* used by Config, Edit (optional) and Console (required)   */
    config,  /* config data (optional)                                   */
    modules, /* optional */
}));

server.listen(port);