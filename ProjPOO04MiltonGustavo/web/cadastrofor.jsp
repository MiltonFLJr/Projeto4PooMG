<%@page import="cadastro.DatabaseFornecedores"%>
<%@page import="cadastro.Fornecedor"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<title>Cadastro de fornecedores</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Sublime Contact Form Widget Responsive, Login form web template,Flat Pricing tables,Flat Drop downs  Sign up Web Templates, Flat Web Templates, Login signup Responsive web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- fonts -->
<link href="//fonts.googleapis.com/css?family=Nunito:300,400,700" rel="stylesheet">
<link href="//fonts.googleapis.com/css?family=Muli:300,400" rel="stylesheet">
<!-- /fonts -->
<!-- css -->
<link href="css/style.css" rel='stylesheet' type='text/css' media="all" />
<!-- /css -->
</head>


<!-- COMEÇO DO NAV-->
<div>
<nav>
<center>
<nav class="navbar navbar-default">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="home.jsp">
        <img alt="Brand" src="images/home.jpg">
         <a class="navbar-brand" href="cadastrocli.jsp">
        <img alt="Brand" src="images/cadastro-de-clientes.jpg">
        <a class="navbar-brand" href="cadastrofor.jsp">
        <img alt="Brand" src="images/cadastro-de-fornecedores.jpg">
      </a>
    </div>
  </div>
</nav>
  </center>
</div>
<!--FIM DO NAV-->


<!-- ENTRADA DE DADOS -->
<h1 class="agileits w3 wthree w3-agile w3-agileits agileinfo agile">Cadastro de fornecedores</h1>
<div class="content-w3ls agileits w3 wthree w3-agile w3-agileits agileinfo agile">
    
<h1 class="agileits w3 wthree w3-agile w3-agileits agileinfo agile">Ficha de cadastro</h1>
<form>
    <fieldset>
        <font color="white">
        <p>Nome: <input type="text" name="nome1"></p>
        <p>Razão Social: <input type="text" name="rs1"></p>
        <p>CNPJ: <input type="text" name="cnpj1"></p>
        <p>E-mail: <input type="text" name="email1"></p>
        <p>Telefone: <input type="text" name="tel1"></p>
        <p>Endereço</p>
        <p>Rua: <input type="text" name="rua1"></p>
        <p>Bairro: <input type="text" name="bairro1"></p>
        <p>Logradouro: <input type="text" name="logra1"></p>
        <p>Localidade: <input type="text" name="local1"></p>
        <p>CEP: <input type="text" name="cep1"></p>
        <p><input type="submit" value="Enviar" name="incluirdados"></p>
    </font>
    </fieldset>
</form>
</div>
<!-- ENTRADA DE DADOS -->


<%
try{
    if(request.getParameter("incluirdados")!=null){
    String nomeF = request.getParameter("nome1");        
    String rsF = request.getParameter("rs1");
    String cnpjF = request.getParameter("cnpj1");
    String emailF = request.getParameter("email1");
    String telF = request.getParameter("tel1");
    String ruaF = request.getParameter("rua1");
    String bairroF = request.getParameter("bairro1");
    String lograF = request.getParameter("logra1");
    String localF = request.getParameter("local1"); 
    String cepF = request.getParameter("cep1");
    
    Fornecedor obj = new Fornecedor();
    obj.setNomeF(nomeF);
    obj.setRsF(rsF);
    obj.setCnpjF(cnpjF);
    obj.setEmailF(emailF);
    obj.setTelF(telF);
    obj.setRuaF(ruaF);
    obj.setBairroF(bairroF);
    obj.setLograF(lograF);
    obj.setLocalF(localF);
    obj.setCepF(cepF);
    
    DatabaseFornecedores.getFornecedores() .add(obj);
    response.sendRedirect(request.getRequestURI());
    
    }else if(request.getParameter("excluir") != null){
     String nomeF = request.getParameter("nome1");
     
     for(int i=0;i<DatabaseFornecedores.getFornecedores() .size(); i++){
      if(DatabaseFornecedores.getFornecedores().get(i).getNomeF().equals(nomeF)){
     DatabaseFornecedores.getFornecedores().remove(i);
     break;
            }
}
  response.sendRedirect(request.getRequestURI());
    }
}catch(Exception ex){%>
 
<%}

%>


<br>
<br>


<h2><center><p><font color="white">Dados dos fornecedores:<p></center></font></h2>
<!-- TABELA COM OS DADOS -->   
<table border="2" bgcolor="#85929e">
<tr>
    <th><h2><font color="white"> Nome</font></h2></th> <th><h2><font color="white">Razão Social</font></h2></th> <th><h2><font color="white">CNPJ</font></h2></th> <th><h2><font color="white"> E-mail</font></h2></th> <th><h2><font color="white"> Telefone</font></h2></th>  <th><h2><font color="white"> Rua</font></h2></th> <th><h2><font color="white"> Bairro</font></h2></th> <th><h2><font color="white"> Logradouro</font></h2></th> <th><h2><font color="white"> Localidade</font></h2></th> <th><h2><font color="white"> CEP</font></h2></th>

</tr>

<% for(Fornecedor obj : DatabaseFornecedores.getFornecedores()){%>
<tr>
 <th><h2><font color="white"> <%= obj.getNomeF() %> </font></h2></th>
 <th><h2><font color="white"> <%= obj.getRsF() %> </font></h2></th> 
 <th><h2><font color="white"> <%= obj.getCnpjF() %> </font></h2></th> 
 <th><h2><font color="white"> <%= obj.getEmailF() %> </font></h2></th>  
 <th><h2><font color="white"> <%= obj.getTelF() %> </font></h2></th>   
 <th><h2><font color="white"> <%= obj.getRuaF() %> </font></h2></th>  
 <th><h2><font color="white"> <%= obj.getBairroF() %> </font></h2></th>  
 <th><h2><font color="white"> <%= obj.getLograF() %> </font></h2></th>  
 <th><h2><font color="white"> <%= obj.getLocalF() %> </font></h2></th>  
 <th><h2><font color="white"> <%= obj.getCepF()%> </font></h2></th>  


<th>
<form>   
    <input type="hidden" name="nome1" value="<%= obj.getNomeF() %>"/>
    <input type="submit" name="excluir" value="Excluir"/>
</form>
</th>

</tr>
</font>
<% } %>
</table>
</div>
<!--TABELA COM OS DADOS -->
	
<!-- BOTÃO VOLTAR-->
<br>
<br>
<div>
<nav>
<center>
<nav class="navbar navbar-default">
  <div class="container-fluid">
    <div class="navbar-header">
        <a class="navbar-brand" href="home.jsp">
        <img alt="Brand" src="images/voltar.jpg">
      </a>
    </div>
  </div>
</nav>
  </center>
</div>
<!-- BOTÃO VOLTAR -->

</html>