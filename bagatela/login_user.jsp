<%@ page contentType="text/html; charset=iso-8859-1" language="java" 
import="java.sql.*" errorPage="" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
<style type="text/css">
<!--
body {
	background-color: #FFF;
	text-align: center;
}
.style1 {
	font-size: 14px;
	font-weight: bold;
	font-family: Verdana, Geneva, sans-serif;
}
.style2 {
	color: #333;
	font-weight: bold;
	font-family: Verdana, Geneva, sans-serif;
	font-size: 12px;
}
-->
</style></head>

<body>


<%
      try
	  {
			//1º carregar o driver
			Class.forName("org.postgresql.Driver");
			//out.println("Conseguiu carregar o driver");
			
			Connection con = DriverManager.getConnection("jdbc:postgresql://localhost/bagatela","postgres","12345");
			//out.println("Conexão com sucesso");
			
			if (request.getParameter("usuario") != null)
			{
				Statement st = con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,
	            ResultSet.CONCUR_READ_ONLY); 
							
				ResultSet rs = st.executeQuery("select * from usuario where cad_login = '"+
				request.getParameter("usuario")+"' and cad_senha = '"+
				request.getParameter("senha")+"'");
			
				if (rs.next())
				{
				    Statement sq = con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,
	            	ResultSet.CONCUR_READ_ONLY);
					//ResultSet sql = sq.executeQuery("update autenticacao set aut_valor='SIM' where aut_cod=1");
					response.sendRedirect("aut_login.jsp");
				   //out.println("Bem vindo ao sistema");
				   
				}   
				else
				   out.println("você não tem acesso ao sistema");   
			
			}


			
			//while(rs.next())
			//   out.println("usuario = "+ rs.getString("log_usuario"));
			
			
					
			
		
		  		  
	  }
	  catch(ClassNotFoundException erroClass)
	  {
	     out.println("Classe Driver JDBC não foi localizado, erro = "+erroClass);
	  }
	  catch(SQLException erroSQL)
	  {
  	     out.println("Erro de conexão com o Banco de dados, erro = "+erroSQL);
	  }
%>
<p><img src="imagens/bagatela_logo.gif" width="441" height="69" /></p>
<form id="form1" name="form1" method="post" action="">
  <div align="center"></div>
</form>

<form id="form2" name="form2" method="post" action="">
  <table width="273" border="0" align="center">
    <tr>
      <td colspan="2"><div align="center"><span class="style1">ACESSO AO USU&Aacute;RIO</span></div></td>
    </tr>
    <tr>
      <td width="90" class="style2">Usu&aacute;rio</td>
      <td width="167"><label>
        <input name="usuario" type="text" id="usuario" size="20" />
      </label></td>
    </tr>
    <tr>
      <td class="style2">Senha</td>
      <td><div align="center">
        <input name="senha" type="password" id="senha" size="20" />
      </div>
      </label></td>
    </tr>
    <tr>
      <td colspan="2"><label>
        <input type="reset" name="limpar" id="limpar" value="Limpar" />
        <input type="submit" name="acesso" id="acesso" value="Acessar" />
<div align="center"></div>
      </label>
      <label>
        <div align="center"></div>
      </label></td>
    </tr>
  </table>
</form>
<p align="center" class="style2">Para cadastro novo clique <a href="cadcliente.jsp">AQUI</a></p>
<p align="center" class="style2">Powered by:</p>
<table width="200" border="0" align="center">
  <tr>
    <td><img src="imagens/logo_java.jpg" width="128" height="78" /></td>
    <td><img src="imagens/logo_postgre.png" width="99" height="78" /></td>
  </tr>
</table>
<p align="center" class="style2">&nbsp;</p>
</body>
</html>
