<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
<style type="text/css">
<!--
.style5 {
	color: #000;
	font-family: Verdana, Geneva, sans-serif;
	font-size: 12px;
}
.style6 {color: #0000FF}
.style7 {	font-weight: bold;
	font-size: 18px;
}
.style8 {	font-weight: bold;
	font-size: 18px;
	color: #006600;
}
.style1 {
	color: #0066FF;
	font-size: 24px;
	font-weight: bold;
	font-family: Verdana, Geneva, sans-serif;
}
.texto {
	font-family: Verdana, Geneva, sans-serif;
}
.texto {
	color: #06F;
}
.center {
	text-align: center;
}
-->
</style>
</head>

<body>
<p align="center"><span class="style1">Cadastro de Usu&aacute;rios</span></p>

<% 

if (request.getParameter("acao") == null)
{ 
    //out.println("não houve ação");
%>
<form id="frmInserirUsuario" name="frmInserirUsuario" method="post" action= 	"cadUsuario.jsp?acao=gravar">
  <table width="275" border="0" align="center">
    <tr>
      <td width="128"><span class="style5">Código.:</span></td>
      <td width="131"><span class="style5">
        <input name="tf_codigo" type="text" id="tf_codigo" value="autom&aacute;tico" size="15" maxlength="15" disabled="disabled"/>
      </span></td>
    </tr>
    <tr>
      <td><label><span class="style5">Nome </span></label>
        <span class="style5">
        <label>Usuário</label>
        <label>.:</label>
      </span></td>
      <td><span class="style5">
        <input name="tf_usuario" type="text" id="tf_usuario" size="15" maxlength="10" />
      </span></td>
    </tr>
    <tr>
      <td><span class="style5">Senha.:</span></td>
      <td><span class="style5">
        <input name="tf_senha" type="password" id="tf_senha" size="15" maxlength="10" />
      </span></td>
    </tr>
  </table>
  <table width="200" border="0" align="center" cellpadding="0" cellspacing="0">
    <tr>
      <td><span class="center">
        <input type="submit" name="gravar" id="gravar" value="gravar" />
      </span></td>
      <td><span class="center">
        <input type="reset" name="Limpar" id="Limpar" value="Limpar" />
      </span></td>
    </tr>
  </table>
<p>&nbsp;</p>
  <p class="center">
    <label></label>
  </p>
</form>
        <% } 
		   else 
		   {
		       //out.println("houve a ação");
			   
			   //if ((request.getParameter("tf_usuario").length() <= 0) || (request.getParameter("tf_senha").length() <= 0) || )
			   //{	       
				   //out.println("Atenção, você deve digitar o nome do usuario");
				   //response.sendRedirect("cadUsuario.jsp");
			   //}
			   
			   {		   
			       try
  		           {
	 			      Class.forName("org.postgresql.Driver");
	 		          Connection con = DriverManager.getConnection("jdbc:postgresql://localhost/bagatela","postgres","12345");
				      Statement st = con.createStatement();
				  
				      st.executeUpdate("insert into login (log_user, log_senha) values ('"+request.getParameter("tf_usuario")+"','"+request.getParameter("tf_senha")+"')");
				  
				       response.sendRedirect("usuario.jsp"); //vai para o usuario.jsp
				  
					}
    				  catch(ClassNotFoundException erroClass)
				  	{
						 out.println("Classe Driver JDBC não foi localizado, erro = "+erroClass);
				  	}
				  	catch(SQLException erroSQL)
				  	{
						 out.println("Erro de conexão com o Banco de dados, erro = "+erroSQL);
				  	}

		   
		    } 
		}%>
</body>
</html>
