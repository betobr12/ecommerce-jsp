<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
<style type="text/css">
<!--
.style1 {
	color: #000;
	font-size: 12px;
	font-family: Verdana, Geneva, sans-serif;
}
.style2 {
	font-size: 24px;
	color: #06F;
	font-family: Verdana, Geneva, sans-serif;
	font-weight: bold;
}
.style4 {
	color: #FFF;
	font-weight: bold;
	font-size: 12px;
	font-family: Verdana, Geneva, sans-serif;
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
.texto {
	font-size: 14px;
}
.ordenacao {
	font-size: 12px;
}
-->
</style>
</head>

<body>
<p align="center" class="style1"><span class="style2">Manuten&ccedil;&atilde;o de Usu&aacute;rios</span></p>
<p align="center" class="style1"><a href="cadUsuario.jsp"><img src="imagens/botao_registrar.gif" width="93" height="24" border="0" /></a>
<p align="center" class="style1"><span class="texto"><span class="texto"><span class="style2"><span class="texto"><span class="ordenacao">Ordena&ccedil;&atilde;o: <a href="usuario.jsp?ordenacao=codigo">C&oacute;digo</a> - <a href="usuario.jsp?ordenacao=alfabetica">Alfab&eacute;tica</a></span></span></span></span></span>
<table width="451" border="1" align="center" cellpadding="0" cellspacing="0">
  <tr bgcolor="#FFFF00">
    <td width="58" bgcolor="#0066FF"><div align="center" class="style4">C&oacute;digo</div></td>
    <td width="147" bgcolor="#0066FF"><div align="center" class="style4">Nome do Usu&aacute;rio</div></td>
    <td width="77" bgcolor="#0066FF"><div align="center" class="style4">Senha</div></td>
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
				      st.executeUpdate("delete from login where log_cod = "+request.getParameter("codigo"));
     		}
     		
			ResultSet rs = null;
			
			if(request.getParameter("ordenacao") == null)
			{
			       rs = st.executeQuery("select * from login order by log_user");
			}
			else if (request.getParameter("ordenacao").equals("codigo"))
			   {
			       rs = st.executeQuery("select * from login");
			   }
     			else if (request.getParameter("ordenacao").equals("alfabetica"))
			   {
			       rs = st.executeQuery("select * from login order by log_user");
			   }
			   	   
			   
			
			
				
			while(rs.next())
			{ %> 
                  <tr bgcolor="#CCFFCC">
                    <td bgcolor="#FFFFFF"><div align="center" class="style1"><%=rs.getString("log_cod")%></div></td>
                    <td bgcolor="#FFFFFF" class="style1"><%=rs.getString("log_user")%></td>
                    <td bgcolor="#FFFFFF"><div align="center" class="style1"><%=rs.getString("log_senha")%></div></td>
                    <td bgcolor="#FFFFFF"><div align="center"><a href="alteraUsuario.jsp?codigo=<%=rs.getString("log_cod")%>&amp;usuario=<%=rs.getString("log_user")%>&amp;senha=<%=rs.getString("log_senha")%>&amp;codexc=<%=rs.getString("log_cod")%>"><img src="imagens/cadastro_clientes.gif" width="24" height="24" border="0" /></a></div></td>
                    <td bgcolor="#FFFFFF"><div align="center"><a href="usuario.jsp?acao=excluir&amp;codigo=<%=rs.getString("log_cod")%>"><img src="imagens/delete.gif" alt="" width="24" height="24" border="0" /></a></div></td>
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
<p>&nbsp;</p>
</body>
</html>
