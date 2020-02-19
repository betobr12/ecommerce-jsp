<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
<style type="text/css">
<!--
.style5 {color: #FF0000}
.style6 {color: #0000FF}
.style7 {
	font-weight: bold;
	font-size: 24px;
}
.style8 {
	font-weight: bold;
	font-size: 24px;
	color: #006600;
}
.style1 {
	color: #06F;
	font-size: 24px;
	font-weight: bold;
	font-family: Verdana, Geneva, sans-serif;
}
.style9 {font-size: 24px}
.texto {
	font-family: Verdana, Geneva, sans-serif;
	font-size: 12px;
}
-->
</style>
</head>

<body>
<p align="center"><span class="style1">Altera&ccedil;&atilde;o de Usu&aacute;rios</span></p>

<% 
     //out.println("usuario = "+request.getParameter("usuario")); //usado para teste de passagem de parametros

if (request.getParameter("acao") == null)
{ 

%>
<form id="frmAlteraUsuario" name="frmAlteraUsuario" method="post" action= 	"alteraUsuario.jsp?acao=alterar">
<p>
  <label></label>
  </p>
          <table width="300" border="0" align="center" cellpadding="0" cellspacing="0">
            <tr>
              <td width="180" class="texto">Código.:</td>
              <td width="120"><input name="tf_codigo" type="text" class="texto" id="tf_codigo" value="<%=request.getParameter("codigo")%>" size="15" maxlength="15" /></td>
            </tr>
            <tr>
              <td class="texto">Nome Usuário.:</td>
              <td><input name="tf_usuario" type="text" class="texto" id="tf_usuario" value="<%=request.getParameter("usuario")%>" size="15" maxlength="10" /></td>
            </tr>
            <tr>
              <td class="texto">Senha.: </td>
              <td><input name="tf_senha" type="password" class="texto" id="tf_senha" value="<%=request.getParameter("senha")%>" size="15" maxlength="10" /></td>
            </tr>
            <tr>
              <td><input type="submit" name="gravar" id="gravar" value="Confirmar Altera&ccedil;&atilde;o" /></td>
              <td><input type="reset" name="Limpar" id="Limpar" value="Limpar" /></td>
            </tr>
          </table>
          <p>&nbsp;</p>
<p>&nbsp;</p>
          <p>&nbsp;</p>
</form>
        <% } 
		   else 
		   {
		       //out.println("houve a ação");
			   
			   //if ((request.getParameter("tf_usuario").length() <= 0) || (request.getParameter("tf_senha").length() <= 0) || (request.getParameter("tf_nivelacesso").length() <= 0))
			   {	       
				   //out.println("Atenção, você deve digitar o nome do usuario");
				  // response.sendRedirect("Usuario.jsp");
			   }
			   //else
			   {		   
			       try
  		           {
	 			      Class.forName("org.postgresql.Driver");
	 		          Connection con = DriverManager.getConnection("jdbc:postgresql://localhost/bagatela","postgres","12345");
				      Statement st = con.createStatement();
				  
				      String sql = ("update login set log_user='"+request.getParameter("tf_usuario")+"',log_senha='"+request.getParameter("tf_senha")+"' where log_cod="+request.getParameter("tf_codigo"));
				        
					st.executeUpdate(sql);
					//out.println("sql = "+sql);
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
<p align="center" class="style9">&nbsp;</p>
</body>
</html>
