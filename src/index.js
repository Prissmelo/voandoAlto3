import React from 'react';
import ReactDOM from 'react-dom';
import './index.css';
import App from './App';
import reportWebVitals from './reportWebVitals';
import { BrowserRouter, Routes, Route } from 'react-router-dom';

import Form from 'react-bootstrap/Form'

import Contato from "./components/Contato.js"
import Promocao from "./components/Promocao.js"
import Destino from "./components/Destino.js"

ReactDOM.render(
  <BrowserRouter>  
    <Routes>
            <Route element={<App/> } path="/" exact/>
            <Route element={<Destino/>} path="/Destino"/>
            <Route element={<Promocao/>} path="/Promocao"/>
            <Route element={<Contato/>} path="/Contato"/>
    </Routes>
  </BrowserRouter>,
  document.getElementById('root')
);

// If you want to start measuring performance in your app, pass a function
// to log results (for example: reportWebVitals(console.log))
// or send to an analytics endpoint. Learn more: https://bit.ly/CRA-vitals
reportWebVitals();
