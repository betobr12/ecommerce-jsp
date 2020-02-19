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
-->
</style>
</head>

<body>
<p align="center" class="style1">Pedidos em aberto</p>
<p align="center" class="style1">
<table width="637" border="1" align="center" cellpadding="0" cellspacing="0">
  <tr bgcolor="#FFFF00">
    <td width="53" align="center" bgcolor="#0066FF"><div align="center" class="style4">C&oacute;digo</div></td>
    <td width="145" align="center" bgcolor="#0066FF"><div align="center" class="style4">Nome e Endere&ccedil;o</div></td>
    <td width="115" align="center" bgcolor="#0066FF" class="style4">Status</td>
    <td width="105" align="center" bgcolor="#0066FF" class="style4">Valor</td>
    <td width="139" align="center" bgcolor="#0066FF" class="style4">Cidade/Estado/CEP</td>
    <td width="66" bgcolor="#0066FF"><div align="center" class="style4">Alterar</div></td>
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
				    //  st.executeUpdate("delete from produtos where pro_cod = "+request.getParameter("codigo"));
     		//}
     		
			ResultSet rs = null;
			
			if(request.getParameter("ordenacao") == null)
			{
			       rs = st.executeQuery("select * from pedidos where ped_status like 'Em aberto' order by ped_nome");
			}
			//else if (request.getParameter("ordenacao").equals("crescente"))
			//   {
			 //      rs = st.executeQuery("select * from produtos");
			 //  }
     		//	else if (request.getParameter("ordenacao").equals("alfabetica"))
			 //  {
			 //      rs = st.executeQuery("select * from produtos order by pro_nome");
			 //  }
			 //  	 	else if (request.getParameter("ordenacao").equals("categoria"))
			  // 		{
			       		//rs = st.executeQuery("select * from produtos order by pro_cat");
			   	//	}  
			   
			
			
				
			while(rs.next())
			{ %> 
                  <tr bgcolor="#CCFFCC">
                    <td bgcolor="#FFFFFF"><div align="center" class="lista"><%=rs.getString("ped_cod")%></div></td>
                    <td bgcolor="#FFFFFF" class="lista"><%=rs.getString("ped_nome")%><br /><%=rs.getString("ped_end")%><br /></td>
                    <td bgcolor="#FFFFFF"><span class="lista"><%=rs.getString("ped_status")%></span></td>
                    <td align="center" bgcolor="#FFFFFF" class="lista">R$  <%=rs.getString("ped_valor")%>,00</td>
                    <td bgcolor="#FFFFFF"><span class="lista"><%=rs.getString("ped_cidade")%></span><br />
                    <span class="lista"><%=rs.getString("ped_cep")%><br />
                    <%=rs.getString("ped_estado")%></span></td>
                    <td bgcolor="#FFFFFF"><div align="center"><a href="alteraPedido.jsp?codigo=<%=rs.getString("ped_cod")%>&amp;nome=<%=rs.getString("ped_nome")%>&amp;status=<%=rs.getString("ped_status")%>&amp;valor=<%=rs.getString("ped_valor")%>&amp;cidade=<%=rs.getString("ped_cidade")%>&amp;estado=<%=rs.getString("ped_estado")%>&amp;cep=<%=rs.getString("ped_cep")%>&amp;endereco=<%=rs.getString("ped_end")%>"><img src="imagens/cadastro_clientes.gif" width="24" height="24" border="0" /></a></div></td>
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
