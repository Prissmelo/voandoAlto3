import React from "react";
import { Navbar } from "react-bootstrap";
import {Route, BrowserRouter} from "react-router-dom";
import {Link} from "react-router-dom";
//import { Button } from 'react-bootstrap';
import NavBar from "../NavBar";
import './Destino.css';
import Form from 'react-bootstrap/Form'
import Button from 'react-bootstrap/Button'
import Footer from "../Footer";


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
                    <Form.Group className="mb-3" controlId="formBasicEndereco">
                        <Form.Label>Endereço</Form.Label>
                        <Form.Control type="endereco" placeholder="Escreva o endereço" />
                    </Form.Group>
                  <Form.Group className="mb-1" controlId="formBasicEmail">
                        <Form.Label>E-mail </Form.Label>
                        <Form.Control type="email" placeholder="Escreva seu email" /> 
                    </Form.Group>
                    <Form.Group className="mb-2" controlId="formBasicCpf">
                        <Form.Label>CPF</Form.Label>
                        <Form.Control type="password" placeholder="000.000.000-00" />
                    </Form.Group>
                   <Form.Group className="mb-2" controlId="formBasicPassword">
                        <Form.Label>Senha</Form.Label>
                        <Form.Control type="password" placeholder="********" />
                    </Form.Group>
                    <Form.Group className="mb-2" controlId="formBasicEstado">
                        <Form.Label>Estado</Form.Label>
                       <Form.Select  size="sm" aria-label="Default select example">
                          <option>Selecione a opção de Estado</option>
                           <option value="1">Rio de Janeiro</option>
                          <option value="2">São Paulo</option>
                           <option value="3">Minas Gerais</option>
                        </Form.Select>
                    </Form.Group>    
                    <br/>
                   <Form.Group className="mb-3" controlId="formBasicCheckbox">
                       <Form.Check type="checkbox" label="Deseja receber notícias e ofertas" />
                   </Form.Group>
                   <div className="botao">
                        <Button href="/" variant="success" type="submit">Voltar para Home </Button>  <Button variant="primary" type="submit">Realizar Cadastro</Button> 
                   </div>
                   
              </Form>
            <Footer/>
        </div>

    </>    

    )
}  

export default Destino;