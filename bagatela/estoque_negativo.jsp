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
	font-size: 14px;
	color: #0000FF;
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
.ordenacao {
	font-weight: bold;
}
.orden {
	font-family: Verdana, Geneva, sans-serif;
	font-size: 12px;
}
.style2 .ordenacao .ordenacao {
	font-size: 12px;
}
.style2 .ordenacao .ordenacao .ordenacao .orden .orden .ordenacao {
	color: #06F;
}
-->
</style>
</head>

<body>
<p align="center" class="style1">Controle de Estoque Negativo</p>
<p align="center" class="style1">
<table width="643" border="1" align="center" cellpadding="0" cellspacing="0">
  <tr bgcolor="#FFFF00">
    <td width="56" bgcolor="#0066FF"><div align="center" class="style4">C&oacute;digo</div></td>
    <td width="168" bgcolor="#0066FF"><div align="center" class="style4">Produto</div></td>
    <td width="96" bgcolor="#0066FF" class="style4">Categoria</td>
    <td width="87" bgcolor="#0066FF" class="style4">Pre&ccedil;o</td>
    <td width="80" bgcolor="#0066FF" class="style4">Estoque</td>
    <td width="75" bgcolor="#0066FF" class="style4">Foto</td>
    <td width="65" bgcolor="#0066FF"><div align="center" class="style4">Alterar</div></td>
  </tr>
  <%
      try
	  {

			Class.forName("org.postgresql.Driver");

		    Connection con = DriverManager.getConnection("jdbc:postgresql://localhost/bagatela","postgres","12345");

			
			Statement st = con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,
	        ResultSet.CONCUR_READ_ONLY); 
			
			//if (request.getParameter("acao") != null)
			//{
			//	      st.executeUpdate("delete from produtos where pro_cod = "+request.getParameter("codigo"));
     		//}
     		
			ResultSet rs = null;
			
			if(request.getParameter("ordenacao") == null)
			{
			       rs = st.executeQuery("select * from produtos where pro_estoque = 0 order by pro_cod");
			}
			else if (request.getParameter("ordenacao").equals("codigo"))
			   {
			       rs = st.executeQuery("select * from produtos");
			   }
     			else if (request.getParameter("ordenacao").equals("produto"))
			   {
			       rs = st.executeQuery("select * from produtos order by pro_nome");
			   }
			   	 	else if (request.getParameter("ordenacao").equals("categoria"))
			   		{
			       		rs = st.executeQuery("select * from produtos order by pro_cat");
			   		}  
			   
			
			
				
			while(rs.next())
			{ %> 
                  <tr bgcolor="#CCFFCC">
                    <td bgcolor="#FFFFFF"><div align="center" class="lista"><%=rs.getString("pro_cod")%></div></td>
                    <td bgcolor="#FFFFFF" class="lista"><%=rs.getString("pro_nome")%></td>
                    <td bgcolor="#FFFFFF"><span class="lista"><%=rs.getString("pro_cat")%></span></td>
                    <td align="center" bgcolor="#FFFFFF" class="lista">R$  <%=rs.getString("pro_preco")%>,00</td>
                    <td align="center" bgcolor="#FFFFFF"><span class="lista"><%=rs.getString("pro_estoque")%></span></td>
                    <td bgcolor="#FFFFFF"><img src="imagens/<%=rs.getString("pro_foto")%>.jpg" width="75" height="75" border="0" /></td>
                    <td bgcolor="#FFFFFF"><div align="center"><a href="alteraProdutos.jsp?codigo=<%=rs.getString("pro_cod")%>&amp;nome=<%=rs.getString("pro_nome")%>&amp;descricao=<%=rs.getString("pro_desc")%>&amp;numero=<%=rs.getString("pro_cat")%>&amp;preco=<%=rs.getString("pro_preco")%>&amp;estoque=<%=rs.getString("pro_estoque")%>&amp;foto=<%=rs.getString("pro_foto")%>"><img src="imagens/cadastro_clientes.gif" width="24" height="24" border="0" /></a></div></td>
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
