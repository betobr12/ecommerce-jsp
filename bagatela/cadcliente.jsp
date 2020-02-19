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
<p align="center"><img src="imagens/bagatela_logo.gif" width="412" height="65" /></p>
<p align="center"><span class="texto">Cadastro de Usu&aacute;rio</span></p>

<% 

if (request.getParameter("acao") == null)
{ 
    //out.println("não houve ação");
%>
<form id="frmInserirUsuario" name="frmInserirUsuario" method="post" action= 	"cadcliente.jsp?acao=gravar">
  <table width="443" border="0" align="center">
    <tr>
      <td width="130"><span class="style5">Código.:</span></td>
      <td width="303"><span class="style5">
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
        <input name="tf_usuario" type="text" id="tf_usuario" size="40" maxlength="40" />
      </span></td>
    </tr>
    <tr>
      <td><label><span class="style5">Login</span></label><span class="style5">
        <label>.:</label>
      </span></td>
      <td><span class="style5">
        <input name="tf_login" type="text" id="tf_login" size="25" maxlength="25" />
      </span></td>
    </tr>
    <tr>
      <td><span class="style5">Senha.:</span></td>
      <td><span class="style5">
        <input name="tf_senha" type="password" id="tf_senha" size="25" maxlength="25" />
      </span></td>
    </tr>
    <tr>
      <td><label><span class="style5">Endere&ccedil;o</span></label><span class="style5"><label></label>
        <label>.:</label>
      </span></td>
      <td><span class="style5">
        <input name="tf_endereco" type="password" id="tf_endereco" size="40" maxlength="40" />
      </span></td>
    </tr>
    <tr>
      <td><label><span class="style5">Bairro</span></label>
        <span class="style5">
        <label></label>
        <label>.:</label>
      </span></td>
      <td><span class="style5">
        <input name="tf_bairro" type="password" id="tf_bairro" size="20" maxlength="20" />
      </span></td>
    </tr>
    <tr>
      <td><label><span class="style5">Cidade</span></label>
        <span class="style5">
        <label></label>
        <label>.:</label>
      </span></td>
      <td><span class="style5">
        <input name="tf_cidade" type="password" id="tf_cidade" size="20" maxlength="20" />
      </span></td>
    </tr>
    <tr>
      <td><label><span class="style5">Estado</span></label>
        <span class="style5">
        <label></label>
        <label>.:</label>
      </span></td>
      <td><span class="style5">
        <input name="tf_estado" type="password" id="tf_estado" size="2" maxlength="2" />
      </span></td>
    </tr>
    <tr>
      <td><label><span class="style5">CEP</span></label>
        <span class="style5">
        <label></label>
        <label>.:</label>
      </span></td>
      <td><span class="style5">
        <input name="tf_cep" type="password" id="tf_cep" size="9" maxlength="9" />
      </span></td>
    </tr>
    <tr>
      <td><label><span class="style5">E-mail</span></label>
        <span class="style5">
        <label></label>
        <label>.:</label>
      </span></td>
      <td><span class="style5">
        <input name="tf_email" type="password" id="tf_email" size="40" maxlength="40" />
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
				  
				      st.executeUpdate("insert into usuario (cad_nome, cad_login, cad_senha, cad_end, cad_bairro, cad_cid, cad_estado, cad_cep, cad_email) values ('"+request.getParameter("tf_usuario")+"','"+request.getParameter("tf_login")+"','"+request.getParameter("tf_senha")+"','"+request.getParameter("tf_endereco")+"','"+request.getParameter("tf_bairro")+"','"+request.getParameter("tf_cidade")+"','"+request.getParameter("tf_estado")+"','"+request.getParameter("tf_cep")+"','"+request.getParameter("tf_email")+"')");				  
				       response.sendRedirect("login_user.jsp"); //vai para o usuario.jsp
				  
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
