import React from "react";
import {Route, BrowserRouter} from "react-router-dom";
import {Link} from "react-router-dom";
import NavBar from "../NavBar";
import Card from 'react-bootstrap/Card'
import CardGroup from 'react-bootstrap/CardGroup'
import Button from 'react-bootstrap/Button'
import '../promocao.css';

const Promocao = () => {
    return (

    <>
    
        <div>
            <NavBar/>
             <h1>Passagens Aéreas</h1>
             <Link to="/">Retornar para Home </Link>

             <CardGroup>
                <Card>
                    <Card.Img variant="top" src="/img/veneza.png" />
                      <Card.Body>
                        <Card.Title><h3>Pacote Tour por Veneza</h3></Card.Title>
                        <Card.Text>
                            <p>O melhor museu a céu aberto, um dos destinos românticos da Europa.</p>
                        </Card.Text>
                        <a href="#" ><h5> Pacotes Simples + Voo</h5></a>
                        <h6><strike>R$4.900 </strike></h6>
                         <h5> R$3.580</h5>
                      </Card.Body>
                      <Card.Footer>
                          <Button variant="success">Comprar Pacote</Button>{' '}
                          <small className="text-muted">Preço por pessoa</small>
                      </Card.Footer>
                </Card>
                <Card>
                  <Card.Img variant="top" src="/img/novayork.png" />
                  <Card.Body>
                     <Card.Title><h3>Pacote Nova York</h3></Card.Title>
                    <Card.Text>
                        <p> O destino mais badalado para compras, conhecida como a cidade que nunca dorme.</p>
                    </Card.Text>
                      <a href="#" ><h5>Pacotes Transl/Hospedagem + Voo</h5></a>
                      <h6><strike>R$6.800 </strike></h6>
                      <h5> R$4.350</h5>
                  </Card.Body>
                  <Card.Footer>
                      <Button variant="success">Comprar Pacote</Button>{' '}
                      <small className="text-muted">Preço por pessoa</small>
                  </Card.Footer>
                </Card>
                <Card>
                  <Card.Img variant="top" src="/img/brazil.png" />
                   <Card.Body>
                     <Card.Title><h3>Pacote Brasil</h3></Card.Title>
                      <Card.Text>
                          <p>Ofertas arrasadoras para curtir o Carnaval e suas férias de verão.</p>
                      </Card.Text>
                      <a href="#" ><h5> Pacotes Hospedagem + Voo</h5></a>
                      <h6><strike>R$6.800 </strike></h6>
                      <h5> R$4.350</h5>
                   </Card.Body>
                   <Card.Footer>
                      <Button variant="success">Comprar Pacote</Button>{' '}
                      <small className="text-muted">Preço por pessoa</small>
                   </Card.Footer>
                </Card>
              </CardGroup>

        </div>

  </>
    )
}
export default Promocao;
