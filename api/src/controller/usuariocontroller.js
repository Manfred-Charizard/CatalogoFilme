import { login } from '../repository/usuariorepository';

import { Router } from 'express';
const server=Router();

server.post('/usuario/login',(req,resp)=>{
    try{
        const{email,senha}= req.body;
        const resposta = await login( email, senha );
        resp.send(resposta);
        
    }catch(err){
        resp.status(400).send({
            erro: 'ocorreu um erro'
        });
    }
})

export default server;