<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c' %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Ag?ncia Voando Alto-Atualiza??o</title>
<script src="https://unpkg.com/@popperjs/core@2.10.2/dist/umd/popper.min.js"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>  
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>


   <link rel="shortcut icon" href="Avi?o.ico" type="image/x-icon">
   <link rel="stylesheet" href="promocao.html">
   <link rel="stylesheet" href="Index.html">
   <link rel="stylesheet" href="home.html">
   <link rel="stylesheet" href="contato.html">
   <link rel="stylesheet" href="indexcss.css">
   <link rel="stylesheet" href="InserirCliente">
   <link rel="stylesheet" href="ClienteAlterado">
   
</head>
<body>
     <!--___________________________________________________________________________________________NavBar do site_______________________________________________________________  -->
    
<header>
  <nav class="navbar navbar-expand-lg navbar-light" style="background-color: rgba(22, 79, 133, 0.959);">
         <div class="container-fluid">
               <div class="logo">
                  <a href=""><img src="Mapa.ico" alt="Icone da Ag?ncia" width="50" height="50" class="d-inline-block align-text-top"></a> 
                  <a class="navbar-brand" href=""><img src="logo pequeno.png" alt="" width="100" height="50"><b></b></a>
                </div>
              <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                 <span class="navbar-toggler-icon"></span>
              </button>
             <div class="nav-list" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-4 mb-lg-0">
                    <li class="nav-item">
                      <a class="nav-link active text-light" aria-current="page" href="home.html">Home</a>
                    </li>
                     <li class="nav-item">
                     <a class="nav-link text-light" aria-current="page" href="Index.html">Cadastro</a>
                   </li> 
                    <li class="nav-item">
                      <a class="nav-link text-light" aria-current="page" href="InserirCliente">Nossos Clientes</a>
                    </li>        
                   <li class="nav-item dropdown">
                     <a class="nav-link dropdown-toggle text-light" href="promocao.html" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="true">Promo??es</a>
                     <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                         <li><a class="dropdown-item text-dark" href="promocao.html">Pacote Simples + Voo </a></li>
                         <li><hr class="dropdown-divider"></li>
                         <li><a class="dropdown-item text-dark" href="promocao.html">Pacote Hospedagem + Voo</a></li>
                          <li><hr class="dropdown-divider"></li>
                          <li><a class="dropdown-item text-dark" href="promocao.html">Pacote Transl./Hosped + Voo</a></li>  
                      </ul>
                    </li>
                   <li class="nav-item">
                     <a class="nav-link text-light" aria-current="page" href="contato.html">Contato</a>
                   </li>  
                  <form action="InserirCliente" method="GET" class="d-flex">
                        <input name="pesquisa" class="form-control me-2" type="pesquisa" placeholder="Digite o nome ou CPF" aria-label="Search">
                        <button class="btn btn-info btn-sm" type="submit">Pesquisar</button>
                  </form>
                </ul>
             </div>
         </div>
   </nav> 
</header>      
    <br>
    
     <!--___________________________________________________________________________________________Lista de Atualiza??o do Cadastro_______________________________________________________________  -->
    
 <div class="container">
              <div class="row" style="align-items: center">
                    <div class="cold-md-7">
                         <hr>
                         <h3>Atualiza??o de dados dos Clientes</h3>
                         <hr>
                    
                    
                         <form action="ClienteAlterado" method="POST">
                               <input value="${cliente.id}" name="id" type="number" style="visibility:hidden">
                               <div class="form-floating mb-3">
						          <input value="${cliente.nome}" name="nome" maxlength="40" type="text" class="form-control" id="floatingInput1"> 
						          <label>Nome completo</label>
					          </div>
					           <div class="form-floating mb-3">
						              <input value="${cliente.cpf}" name="cpf" maxlength="11" type="text" class="form-control"> 
						              <label>CPF </label>
					           </div>
					           <div class="form-floating mb-3">
						          <input value="${cliente.endereco}" name="endereco" maxlength="40" type="text" class="form-control" id="floatingInput1"> 
						          <label>Endere?o</label>
					          </div>
					            <div class="form-floating mb-3">
						          <input value="${cliente.email}"name="email" maxlength="40" type="text" class="form-control" id="floatingInput1"> 
						          <label>Email</label>
					          </div>
					           <div class="form-floating mb-3">
						         <input value="${cliente.nascimento}" name="nascimento" type="date" class="form-control" placeholder="Nascimento">
						          <label>Nascimento</label>
					          </div>
					          <select name="situacao" class="form-select mb-3" aria-label="Default select example">
						           <option value="Inativo" selected>--Selecionar a Situa??o</option>
						           <option value="Ativo">Ativo</option>
						           <option value="Inativo">Inativo</option>
					          </select>

					              <button class="btn btn-sucess" type="submit">Atualizar</button>
					              <button class="btn btn-secondary" type="reset">Limpar</button>                  
                         </form>  
                              
                    </div>
             </div>
 </div>
     
      <!--___________________________________________________________________________________________Rodap? do site_______________________________________________________________  -->
     
      
     <footer>
        <div class="footer-content">
                   <h3>Voando Alto</h3>
                 <p>"Almejamos que as viagens nos sonhos torne-se realidade amanh?!"</p>
             <ul class="socials">
                  <li><a>
                     <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-facebook" viewBox="0 0 16 16">
                         <path d="M16 8.049c0-4.446-3.582-8.05-8-8.05C3.58 0-.002 3.603-.002 8.05c0 4.017 2.926 7.347 6.75 7.951v-5.625h-2.03V8.05H6.75V6.275c0-2.017 1.195-3.131 3.022-3.131.876 0 1.791.157 1.791.157v1.98h-1.009c-.993 0-1.303.621-1.303 1.258v1.51h2.218l-.354 2.326H9.25V16c3.824-.604 6.75-3.934 6.75-7.951z"/>
                     </svg></a>
                  </li>

                  <li><a>
                     <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-twitter" viewBox="0 0 16 16">
                         <path d="M5.026 15c6.038 0 9.341-5.003 9.341-9.334 0-.14 0-.282-.006-.422A6.685 6.685 0 0 0 16 3.542a6.658 6.658 0 0 1-1.889.518 3.301 3.301 0 0 0 1.447-1.817 6.533 6.533 0 0 1-2.087.793A3.286 3.286 0 0 0 7.875 6.03a9.325 9.325 0 0 1-6.767-3.429 3.289 3.289 0 0 0 1.018 4.382A3.323 3.323 0 0 1 .64 6.575v.045a3.288 3.288 0 0 0 2.632 3.218 3.203 3.203 0 0 1-.865.115 3.23 3.23 0 0 1-.614-.057 3.283 3.283 0 0 0 3.067 2.277A6.588 6.588 0 0 1 .78 13.58a6.32 6.32 0 0 1-.78-.045A9.344 9.344 0 0 0 5.026 15z"/>
                     </svg></a>
                  </li>

                  <li><a>
                     <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-google" viewBox="0 0 16 16">
                         <path d="M15.545 6.558a9.42 9.42 0 0 1 .139 1.626c0 2.434-.87 4.492-2.384 5.885h.002C11.978 15.292 10.158 16 8 16A8 8 0 1 1 8 0a7.689 7.689 0 0 1 5.352 2.082l-2.284 2.284A4.347 4.347 0 0 0 8 3.166c-2.087 0-3.86 1.408-4.492 3.304a4.792 4.792 0 0 0 0 3.063h.003c.635 1.893 2.405 3.301 4.492 3.301 1.078 0 2.004-.276 2.722-.764h-.003a3.702 3.702 0 0 0 1.599-2.431H8v-3.08h7.545z"/>
                     </svg></a>
                  </li>

                   <li><a>
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-tiktok" viewBox="0 0 16 16">
                            <path d="M9 0h1.98c.144.715.54 1.617 1.235 2.512C12.895 3.389 13.797 4 15 4v2c-1.753 0-3.07-.814-4-1.829V11a5 5 0 1 1-5-5v2a3 3 0 1 0 3 3V0Z"/>
                       </svg></a>
                   </li>

                    <li><a>
                         <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-youtube" viewBox="0 0 16 16">
                             <path d="M8.051 1.999h.089c.822.003 4.987.033 6.11.335a2.01 2.01 0 0 1 1.415 1.42c.101.38.172.883.22 1.402l.01.104.022.26.008.104c.065.914.073 1.77.074 1.957v.075c-.001.194-.01 1.108-.082 2.06l-.008.105-.009.104c-.05.572-.124 1.14-.235 1.558a2.007 2.007 0 0 1-1.415 1.42c-1.16.312-5.569.334-6.18.335h-.142c-.309 0-1.587-.006-2.927-.052l-.17-.006-.087-.004-.171-.007-.171-.007c-1.11-.049-2.167-.128-2.654-.26a2.007 2.007 0 0 1-1.415-1.419c-.111-.417-.185-.986-.235-1.558L.09 9.82l-.008-.104A31.4 31.4 0 0 1 0 7.68v-.123c.002-.215.01-.958.064-1.778l.007-.103.003-.052.008-.104.022-.26.01-.104c.048-.519.119-1.023.22-1.402a2.007 2.007 0 0 1 1.415-1.42c.487-.13 1.544-.21 2.654-.26l.17-.007.172-.006.086-.003.171-.007A99.788 99.788 0 0 1 7.858 2h.193zM6.4 5.209v4.818l4.157-2.408L6.4 5.209z"/>
                         </svg></a>
                   </li>
              </ul>
         </div>
               <div class="footer-bottom">
                    <p>copyright &copy;2022 Voando Alto. <span></span></p>
              </div>
   </footer>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
</body>
</html>