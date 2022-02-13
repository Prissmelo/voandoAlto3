import React from "react";
import {Route, BrowserRouter} from "react-router-dom";
import {Link} from "react-router-dom";
import NavBar from "../NavBar";
import footer from "../footer"
import Button from 'react-bootstrap/Button'

const Contato = () => {
    return (
    <>    
        <div className="pacote1">
            <NavBar/>
             <h1>Pagina Contato</h1>
             <Link to="/">Retornar para Home </Link>

        
        </div>
        
        <Button variant="primary">Primary</Button>{' '}
        <Button variant="secondary">Secondary</Button>{' '}
        <Button variant="success">Success</Button>{' '}
        <Button variant="warning">Warning</Button>{' '}
      
    </> 

    )

}
export default Contato;