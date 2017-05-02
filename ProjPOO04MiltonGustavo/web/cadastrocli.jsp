<%-- 
    Document   : Cclientes
    Created on : 01/05/2017, 01:23:37
    Author     : miltonus2
--%>

<%@page import="cadastro.DatabaseClientes"%>
<%@page import="cadastro.cliente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!doctype html>
<html>
<head>
    <meta charset="UTF-8">
<title>Cadastro de clientes</title>
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
<body>

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
<h1 class="agileits w3 wthree w3-agile w3-agileits agileinfo agile">Cadastro de clientes</h1>
<div class="content-w3ls agileits w3 wthree w3-agile w3-agileits agileinfo agile">
    
<h1 class="agileits w3 wthree w3-agile w3-agileits agileinfo agile">Ficha de cadastro</h1>
<form>
    <fieldset>
        <font color="white">
        <p>Nome: <input type="text" name="nome1"></p>
        <p>CPF: <input type="text" name="cpf1"></p>
        <p>RG: <input type="text" name="rg1"></p>
        <p>E-mail: <input type="text" name="email1"></p>
        <p>Telefone: <input type="text" name="telefone1"></p>
        <p>Endereço</p>
        <p>Rua: <input type="text" name="rua1"></p>
        <p>Bairro: <input type="text" name="bairro1"></p>
        <p>Numero: <input type="text" name="numero1"></p>
        <p>Localidade: <input type="text" name="localidade1"></p>
        <p>CEP: <input type="text" name="cep1"></p>
        <p><input type="submit" value="Enviar" name="incluirdados"></p>
    </font>
    </fieldset>
</form>
</div>
<!-- ENTRADA DE DADOS -->

<!-- CAPTURA DO PARÂMETROS DE ENTRADA E FUNÇÕES DA TABELA -->
<%
try{
    if(request.getParameter("incluirdados")!=null){
        String cpfC = request.getParameter("cpf1");
        String nomeC = request.getParameter("nome1");
        String rgC = request.getParameter("rg1");
    String emailC = request.getParameter("email1");
    String telefoneC = request.getParameter("telefone1");
    String ruaC = request.getParameter("rua1");
    String bairroC = request.getParameter("bairro1");
    String numeroC = request.getParameter("numero1"); 
    String localidadeC = request.getParameter("localidade1"); 
    String cepC = request.getParameter("cep1"); 
    cliente clt = new cliente();
    clt.setCpfC(cpfC);
    clt.setNomeC(nomeC);
    clt.setRgC(rgC);
    clt.setEmailC(emailC);
    clt.setTelefoneC(telefoneC);
    clt.setRuaC(ruaC);
    clt.setBairroC(bairroC);
    clt.setNumeroC(numeroC);
    clt.setLocalidadeC(localidadeC);
    clt.setCepC(cepC);
    DatabaseClientes.getClientes() .add(clt);
    response.sendRedirect(request.getRequestURI());
    }else if(request.getParameter("excluir") != null){
     String nomeC = request.getParameter("nome1");
     for(int i=0;i<DatabaseClientes.getClientes() .size(); i++){
      if(DatabaseClientes.getClientes().get(i).getNomeC().equals(nomeC)){
     DatabaseClientes.getClientes().remove(i);
     break;
            }
}
  response.sendRedirect(request.getRequestURI());
    }
}catch(Exception ex){%>
 <div style="color: red;">Erro: <%= ex.getMessage() %></div>
<%}

%>
<!-- CAPTURA DO PARÂMETROS DE ENTRADA E FUNÇÕES DA TABELA-->

<br>
<br>


<h2><center><p><font color="white">Dados do cliente:<p></center></font></h2>
<!-- TABELA COM OS DADOS -->   
<table border="2" bgcolor="#85929e">
<tr>
    
    <th><h2><font color="white"> Nome</font></h2></th> <th><h2><font color="white">CPF</font></h2></th> <th><h2><font color="white">RG</font></h2></th> <th><h2><font color="white"> E-mail</font></h2></th> <th><h2><font color="white"> Telefone</font></h2></th>  <th><h2><font color="white"> Rua</font></h2></th> <th><h2><font color="white"> Bairro</font></h2></th> <th><h2><font color="white"> Numero</font></h2></th> <th><h2><font color="white"> Localidade</font></h2></th> <th><h2><font color="white"> CEP</font></h2></th>
   
</tr>

<% for(cliente clt : DatabaseClientes.getClientes()){%>
<tr>
 <th><h2><font color="white"> <%=clt.getNomeC()%> </font></h2></th>
 <th><h2><font color="white">  <%=clt.getCpfC()%>   </font></h2></th> 
 <th><h2><font color="white"> <%=clt.getRgC()%> </font></h2></th> 
 <th><h2><font color="white"> <%=clt.getEmailC()%> </font></h2></th>  
 <th><h2><font color="white"> <%=clt.getTelefoneC()%> </font></h2></th>   
  <th><h2><font color="white"> <%=clt.getRuaC()%>  </font></h2></th>  
    <th><h2><font color="white">  <%=clt.getBairroC()%></font></h2></th>  
   <th><h2><font color="white">  <%=clt.getNumeroC()%> </font></h2></th>  
    <th><h2><font color="white"> <%=clt.getLocalidadeC()%> </font></h2></th>  
     <th><h2><font color="white"> <%=clt.getCepC()%> </font></h2></th>
     <th>
<form>   
     <input type="hidden" name="nome1" value="<%= clt.getNomeC() %>"/>
     <input type="submit" name="excluir" value="Excluir"/>
             </form>
     </th>

</tr>
</font>
  <%}%>
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
</body>
</html>