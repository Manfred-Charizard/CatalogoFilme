import 'dotenv/config'

import usuariocontroller from './controller/usuariocontroller.js'


import express from 'express'
import cors from 'cors'

const server =express();
server.use(cors());
server.use(express.json());

server.use(usuariocontroller);

server.listen(process.env.PORT, ()=> console.log(`API online na porta ${process.env.PORT}`));