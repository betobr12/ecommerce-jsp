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
	font-size: 12px;
	font-weight: bold;
	font-family: Verdana, Geneva, sans-serif;
}
.style2 {
	font-size: 14px;
	color: #0000FF;
}
.style4 {
	color: #000;
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
.tr1 {
	background-image: url(imagens/site2-4.jpg);
	background-repeat: repeat;
}
.trmenu {	background-image: url(imagens/site5.jpg);
	background-repeat: repeat;
}
.itens {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 12px;
	color: #3E3F99;
}
.tr2 {
	background-image: url(imagens/site2-4.jpg);
	background-repeat: repeat;
}
tr {
	background-image: url(imagens/fundo_princ-1.jpg);
}
.tr1 #form1 table tr td {
}
.preco {
	font-size: 12px;
	font-weight: bold;
	color: #F00;
}
.style2 {
	text-align: justify;
}
.center {
	text-align: center;
}
.ordenacao {
	font-family: Verdana, Geneva, sans-serif;
	text-align: center;
	font-size: 12px;
}
.traco {
	background-image: url(imagens/traco_fundo.jpg);
	background-repeat: repeat;
}
.fundo {
	background-image: url(imagens/fundo_princ-1.jpg);
	background-repeat: repeat;
}
-->
</style>
</head>

<body>

<table width="800" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td>
    
    
    <img src="imagens/site1.jpg" width="800" height="63" border="0" usemap="#Map3" />
    <map name="Map3" id="Map3">
      <area shape="rect" coords="347,20,503,42" href="logout.jsp" />
    </map></td>
  </tr>
</table>
<table width="800" height="28" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="809" height="28" bgcolor="#FFFFFF"><form id="form1" name="form1" method="post" action="pesquisa.jsp">
      <table width="800" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td width="87"><img src="imagens/site2-1.jpg" width="87" height="28" /></td>
          <td width="420" class="tr1"><label>
            <input name="tf_pesquisa" type="text" id="tf_pesquisa" size="70" />
          </label></td>
          <td width="221" class="tr1"><label>
            <input type="submit" name="OK" id="OK" value="OK" />
          </label></td>
          <td width="72"><img src="imagens/site2-6.jpg" width="211" height="28" border="0" usemap="#Map" /></td>
        </tr>
      </table>
    </form></td>
  </tr>
</table>
<table width="800" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td class="tr2"><img src="imagens/site3.jpg" width="800" height="40" border="0" usemap="#Map2Map" />
      <map name="Map2Map" id="Map2Map">
        <area shape="rect" coords="4,10,139,48" href="index.jsp" />
        <area shape="rect" coords="143,10,246,50" href="lista_celulares.jsp" />
        <area shape="rect" coords="254,11,357,49" href="lista_eletro.jsp" />
        <area shape="rect" coords="365,12,467,59" href="lista_eletronicos.jsp" />
        <area shape="rect" coords="474,11,578,56" href="lista_games.jsp" />
        <area shape="rect" coords="585,12,689,60" href="lista_informatica.jsp" />
    </map></td>
  </tr>
</table>
<map name="Map2" id="Map2">
  <area shape="rect" coords="4,10,139,48" href="index.jsp" />
  <area shape="rect" coords="143,10,246,50" href="lista_celulares.jsp" />
  <area shape="rect" coords="254,11,357,49" href="lista_eletro.jsp" />
  <area shape="rect" coords="365,12,467,59" href="lista_eletronicos.jsp" />
  <area shape="rect" coords="474,11,578,56" href="lista_games.jsp" />
  <area shape="rect" coords="585,12,689,60" href="lista_informatica.jsp" />
</map>
<table width="800" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td><img src="imagens/site4_destaque.jpg" width="800" height="38" /></td>
  </tr>
</table>
<table width="800" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td><table width="800" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="140" valign="top" class="trmenu"><table width="123" border="0" cellpadding="5" cellspacing="1">
          <tr>
              <td width="12" class="itens">:::</td>
              <td width="101" class="itens"><a href="lista_celulares.jsp">Celulares</a></td>
            </tr>
            <tr>
              <td class="itens">:::</td>
              <td class="itens"><a href="lista_eletro.jsp">Eletrodom&eacute;sticos</a></td>
            </tr>
            <tr>
              <td class="itens">:::</td>
              <td class="itens"><a href="lista_eletronicos.jsp">Eletr&ocirc;nicos</a></td>
            </tr>
            <tr>
              <td class="itens">:::</td>
              <td class="itens"><a href="lista_games.jsp">Games</a></td>
            </tr>
            <tr>
              <td class="itens">:::</td>
              <td class="itens"><a href="lista_informatica.jsp">Inform&aacute;tica</a></td>
            </tr>
            <tr>
              <td>&nbsp;</td>
              <td valign="top">&nbsp;</td>
            </tr>
          </table>
          <p>&nbsp;</p>
          <p>&nbsp;</p>
          <p>&nbsp;</p>
          <p>&nbsp;</p>
          <p>&nbsp;</p>
          <p>&nbsp;</p></td>
        <td width="660" valign="top" class="fundo"><table width="214" border="0" align="center">
          <tr>
            <td width="431"><span class="style2"><span class="center"><span class="center"><span class="ordenacao">Ordena&ccedil;&atilde;o: <a href="index.jsp?ordenacao=produto">Produto</a> - <a href="index.jsp?ordenacao=preco">Pre&ccedil;o</a></span></span></span></span><span class="ordenacao"><span class="center"><span class="center"></span></span></span></td>
          </tr>
        </table>
          <table width="609" border="0" align="center" cellpadding="3" cellspacing="3">
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
			       rs = st.executeQuery("select * from produtos where pro_cat like 'Eletrônicos' and pro_estoque >= '1' order by pro_cat");
			}
			else if (request.getParameter("ordenacao").equals("produto"))
			   {
			       rs = st.executeQuery("select * from produtos where pro_cat like 'Eletrônicos' and pro_estoque >= '1' order by pro_nome");
			   }
     			else if (request.getParameter("ordenacao").equals("preco"))
			   {
			       rs = st.executeQuery("select * from produtos where pro_cat like 'Eletrônicos' and pro_estoque >= '1' order by pro_preco");
			   }
			   	 				
			
				
			while(rs.next())
			{ %>
          <tr bgcolor="#CCFFCC">
            <td width="100" bgcolor="#FFFFFF"><img src="imagens/<%=rs.getString("pro_foto")%>.jpg" alt="" width="90" height="90" border="0" /></td>
            <td width="208" bgcolor="#FFFFFF" class="style4"><%=rs.getString("pro_nome")%></td>
            <td width="131" bgcolor="#FFFFFF"><span class="lista"><span class="preco">R$ <%=rs.getString("pro_preco")%>,00</span></span></td>
            <td width="131" bgcolor="#FFFFFF"><a href="mostra_produto.jsp?codigo=<%=rs.getString("pro_cod")%>&amp;nome=<%=rs.getString("pro_nome")%>&amp;descricao=<%=rs.getString("pro_desc")%>&amp;numero=<%=rs.getString("pro_cat")%>&amp;preco=<%=rs.getString("pro_preco")%>&amp;estoque=<%=rs.getString("pro_estoque")%>&amp;foto=<%=rs.getString("pro_foto")%>" class="style1">Ver produto</a></td>
            </tr>
          <%          }
      }
	  catch(ClassNotFoundException erroClass)
	  {
	     out.println("Classe Driver JDBC n&atilde;o foi localizado, erro = "+erroClass);
	  }
	  catch(SQLException erroSQL)
	  {
  	     out.println("Erro de conex&atilde;o com o Banco de dados, erro = "+erroSQL);
	  }
%>
          </table>
          <p>&nbsp;</p>
          <p>&nbsp;</p>
          <p>&nbsp;</p></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td height="19" class="traco">&nbsp;</td>
  </tr>
</table>
<p align="center" class="style1">&nbsp;</p>

<map name="Map" id="Map">
  <area shape="rect" coords="1,2,77,29" href="pre_carrinho.jsp" />
  <area shape="rect" coords="83,2,201,27" href="login.jsp" />
</map>
</body>
</html>
