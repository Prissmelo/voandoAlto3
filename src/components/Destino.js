import React from "react";
import { Navbar } from "react-bootstrap";
import {Route, BrowserRouter} from "react-router-dom";
import {Link} from "react-router-dom";
//import { Button } from 'react-bootstrap';
import NavBar from "../NavBar";
import './Destino.css';
import Form from 'react-bootstrap/Form'
import Button from 'react-bootstrap/Button'


const Destino = () => {
    return (
    <>    

        <div>
            <NavBar/>

               <Form className="pacote2">
                 <h1>Cadastro de Destino</h1>
                    <Form.Group className="mb-3" controlId="formBasicNome">
                        <Form.Label>Nome Completo</Form.Label>
                        <Form.Control type="nome" placeholder="Escreva o nome completo" />
                    </Form.Group>
                  
                  <Form.Group className="mb-1" controlId="formBasicEmail">
                        <Form.Label>E-mail </Form.Label>
                        <Form.Control type="email" placeholder="Escreva seu email" /> 
                    </Form.Group>
                   
                   <Form.Group className="mb-2" controlId="formBasicPassword">
                        <Form.Label>Senha</Form.Label>
                        <Form.Control type="password" placeholder="********" />
                    </Form.Group>
                    <br/>
                   <Form.Group className="mb-3" controlId="formBasicCheckbox">
                       <Form.Check type="checkbox" label="Deseja receber notícias e ofertas" />
                   </Form.Group>
                   <div className="botao">
                        <Button href="/" variant="success" type="submit">Voltar para Home </Button>  <Button variant="primary" type="submit">Realizar Cadastro</Button> 
                   </div>
                   
              </Form>

        </div>

    </>    

    )
}  

export default Destino;