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
	font-size: 36px;
}
.style8 {
	font-weight: bold;
	font-size: 36px;
	color: #006600;
}
.style1 {
	color: #06F;
	font-size: 24px;
	font-weight: bold;
	font-family: Verdana, Geneva, sans-serif;
}
.style9 {
	font-size: 12px;
	color: #000;
	font-family: Verdana, Geneva, sans-serif;
	font-weight: normal;
}
-->
</style>
</head>

<body>
<p align="center"><span class="style1">Cadastro de Categoria</span></p>
<% 

if (request.getParameter("acao") == null)
{ 
    //out.println("nÃƒÂ£o houve aÃƒÂ§ÃƒÂ£o");
%>
<form id="frmInserirLogradouro" name="frmInserirLogradouro" method="post" action= 	"cadCategoria.jsp?acao=gravar">
  <p>
    <label></label>
    <label></label>
  </p>
  <table width="317" border="0" align="center">
<tr>
              <td width="121" class="style1"><span class="style9">C&oacute;digo.:</span></td>
              <td width="180"><input name="tf_codigo" type="text" disabled="disabled" class="style9" id="tf_codigo" value="autom&aacute;tico" size="15" maxlength="15"/></td>
            </tr>
            <tr>
              <td class="style9">Nome Categoria.:</td>
              <td><input name="tf_categoria" type="text" class="style9" id="tf_categoria" size="30" maxlength="30" /></td>
            </tr>
            <tr>
              <td align="left"><input type="submit" name="gravar" id="gravar" value="gravar" /></td>
              <td><input type="reset" name="Limpar" id="Limpar" value="Limpar" /></td>
            </tr>
          </table>
          <p>&nbsp;</p>
</form>
<% } 
		   else 
		   {
		       //out.println("houve a aÃƒÆ’Ã‚Â§ÃƒÆ’Ã‚Â£o");
			   
			   if ((request.getParameter("tf_categoria").length() <= 0))
			   {	       
				   //out.println("AtenÃƒÆ’Ã‚Â§ÃƒÆ’Ã‚Â£o, vocÃƒÆ’Ã‚Âª deve digitar o nome do usuario");
				   response.sendRedirect("cadCategoria.jsp");
			   }
			   else
			   {		   
			       try
  		           {
	 			      Class.forName("org.postgresql.Driver");
	 		          Connection con = DriverManager.getConnection("jdbc:postgresql://localhost/bagatela","postgres","12345");
				      Statement st = con.createStatement();
				  
				      st.executeUpdate("insert into categoria (cat_nome) values ('"+request.getParameter("tf_categoria")+"')");
				  
				       response.sendRedirect("categoria.jsp"); //vai para o usuario.jsp
				  
					}
    				  catch(ClassNotFoundException erroClass)
				  	{
						 out.println("Classe Driver JDBC nÃƒÆ’Ã‚Â£o foi localizado, erro = "+erroClass);
				  	}
				  	catch(SQLException erroSQL)
				  	{
						 out.println("Erro de conexÃƒÆ’Ã‚Â£o com o Banco de dados, erro = "+erroSQL);
				  	}

		   
		    } 
		}%>
<p align="center" class="style9">&nbsp;</p>
<p>&nbsp;</p>
</body>
</html>
