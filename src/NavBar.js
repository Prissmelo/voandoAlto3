import { logDOM } from '@testing-library/react';
import React from 'react';
import './NavBar.css';
import {Link} from "react-router-dom"


function NavBar  () {
   
  return (
  <>
    <nav className="navbar navbar-expand-lg navbar-light">
           <div className="logo">
              <img src="/img/Mapa2.ico" />
              <img src="/img/logopequeno.png" />
           </div>

            <div className="navbar-container"> 
                <ul className="inline"> 
                    
                  <a><Link to="/"><h4>Home</h4></Link> </a>  
                    
                   
                  <a><Link to="/Destino"><h4>Destino</h4></Link></a>   
                   
                   
                  <Link to="/Promocao"><h4>Promoção</h4></Link>
                   
                    
                  <Link to="/Contato"><h4>Contato</h4></Link>
                    

                </ul>
                
            </div>

    </nav> 

  </>  
 
  
  );
 
}

export default NavBar;