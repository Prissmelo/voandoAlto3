import logo from './logo.svg';
import './App.css';
import Routes from "./routes/Routes";
import {Link} from "react-router-dom"
import NavBar from './NavBar';
import './NavBar.css';
import Footer from './Footer';
import './Footer.css';


function App() {
  return (
    <>  
      <header>
          <NavBar></NavBar>
          <div className="App">
            <img src="/img/logoag.png" alt=""/>

          </div>
 
      </header>

      <section1>
        <div className="App">
             <div className='imagem'>
                 <img src="/img/viajarpelomundo2.png" />
             </div>
            
        </div>
        
      </section1>
      
     
     <Footer/>
     
      
      
    </>
    

  );

}

export default App;
