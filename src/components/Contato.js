import React from "react";
import {Route, BrowserRouter} from "react-router-dom";
import {Link} from "react-router-dom";
import NavBar from "../NavBar";
import footer from "../Footer"
import Button from 'react-bootstrap/Button'
import Form from 'react-bootstrap/Form'
import Footer from "../Footer";

const Contato = () => {
    return (
    <>    
         <NavBar/>
        <div className="pacote1">
            
             <h1>Deixe sua mensagem</h1>
             <br/>
             <h5>Entre em contato com a nossa equipe, através do preenchimento desse formulário abaixo:</h5>
             <br/>
           
             <Form>
                   <Form.Group className="mb-3" controlId="exampleForm.ControlInput1">
                        <Form.Label>E-mail</Form.Label>
                        <Form.Control type="email" placeholder="name@example.com" />
                   </Form.Group>
                   <Form.Group className="mb-3" controlId="exampleForm.ControlTextarea1">
                        <Form.Label>Mensagem</Form.Label>
                       <Form.Control as="textarea" rows={3} placeholder="Digite aqui sua dúvidas, reclamações ou elogios..." />
                   </Form.Group>
                   <div className="botao">
                       <Button  href="/" variant="primary">Enviar</Button>{' '}
                   </div>
                   
               </Form>
        
        </div>
        
        <Footer/>
      
    </> 

    )

}
export default Contato;