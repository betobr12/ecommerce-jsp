<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
<style type="text/css">
<!--
.style1 {
	color: #06F;
	font-size: 24px;
	font-weight: bold;
	font-family: Verdana, Geneva, sans-serif;
}
.style2 {
	font-size: 12px;
	color: #0000FF;
	font-weight: bold;
}
.style4 {
	color: #FFF;
	font-weight: bold;
	font-family: Verdana, Geneva, sans-serif;
	font-size: 12px;
}
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
.style10 {
	font-size: 12px
}
.style11 {font-size: 14px}
.lista {
	font-family: Verdana, Geneva, sans-serif;
	font-size: 12px;
}
-->
</style>
</head>

<body>
<p align="center" class="style1">Manuten&ccedil;&atilde;o de Categoria</p>
<p align="center" class="style1"><a href="cadCategoria.jsp"><img src="imagens/botao_registrar.gif" width="93" height="24" /></a>
<p align="center" class="style1"><span class="style2">Ordena&ccedil;&atilde;o: <a href="categoria.jsp?ordenacao=crescente">C&oacute;digo</a> - <a href="categoria.jsp?ordenacao=alfabetica">Alfab&eacute;tica</a></span>
<table width="368" border="1" align="center" cellpadding="0" cellspacing="0">
  <tr bgcolor="#FFFF00">
    <td width="58" bgcolor="#0066FF"><div align="center" class="style4">C&oacute;digo</div></td>
    <td width="147" bgcolor="#0066FF"><div align="center" class="style4">Nome da Categoria</div></td>
    <td width="60" bgcolor="#0066FF"><div align="center" class="style4">Alterar</div></td>
    <td width="75" bgcolor="#0066FF"><div align="center" class="style4">Excluir</div></td>
  </tr>
  <%
      try
	  {

			Class.forName("org.postgresql.Driver");

		    Connection con = DriverManager.getConnection("jdbc:postgresql://localhost/bagatela","postgres","12345");

			
			Statement st = con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,
	        ResultSet.CONCUR_READ_ONLY); 
			
			if (request.getParameter("acao") != null)
			{
				      st.executeUpdate("delete from categoria where cat_cod = "+request.getParameter("codigo"));
     		}
     		
			ResultSet rs = null;
			
			if(request.getParameter("ordenacao") == null)
			{
			       rs = st.executeQuery("select * from categoria order by cat_cod");
			}
			else if (request.getParameter("ordenacao").equals("crescente"))
			   {
			       rs = st.executeQuery("select * from categoria");
			   }
     			else if (request.getParameter("ordenacao").equals("alfabetica"))
			   {
			       rs = st.executeQuery("select * from categoria order by cat_nome");
			   }
			   	   
			   
			
			
				
			while(rs.next())
			{ %> 
                  <tr bgcolor="#CCFFCC">
                    <td bgcolor="#FFFFFF"><div align="center" class="lista"><%=rs.getString("cat_cod")%></div></td>
                    <td bgcolor="#FFFFFF" class="lista"><%=rs.getString("cat_nome")%></td>
                    <td bgcolor="#FFFFFF"><div align="center"><a href="alteraLogradouro.jsp?codigo=<%=rs.getString("cat_cod")%>&amp;logradouro=<%=rs.getString("cat_nome")%>"><img src="imagens/cadastro_clientes.gif" width="24" height="24" /></a></div></td>
                    <td bgcolor="#FFFFFF"><div align="center"><a href="categoria.jsp?acao=excluir&amp;codigo=<%=rs.getString("cat_cod")%>"><img src="imagens/delete.gif" alt="" width="24" height="24" /></a></div></td>
                  </tr>
<%          }
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
</table>
<p align="center" class="style7">&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
</body>
</html>
