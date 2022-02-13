import React from 'react';
import './footer.css';
import {FaFacebook, FaInstagram, FaLinkedin} from 'react-icons/fa';




function footer ()  {
    return (
    <>
        <div className="footer">
            <h3>Voando Alto</h3>
             <p>"Almejamos que as viagens nos sonhos torne-se realidade amanhã!"</p>
             <ul class="socials">
                    <li>
                       <FaFacebook/>
                    </li>
                       <FaInstagram/>
                    <li>
                      <FaLinkedin/>
                    </li>

                </ul>
        </div>
                <div className="footer-bottom">
                    <p>copyright &copy;2022 Voando Alto. <span></span></p>

                </div>
    
    
    </>   

    );

}

export default footer;