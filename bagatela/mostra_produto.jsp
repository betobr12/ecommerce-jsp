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
	color: #000;
	font-weight: bold;
	font-family: Verdana, Geneva, sans-serif;
	font-size: 12px;
}
.style5 {
	color: #FF0000;
	font-family: Verdana, Geneva, sans-serif;
	font-size: 12px;
}
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
	font-size: 16px;
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
.botao {
	background-image: url(imagens/comprar.gif);
}
.esquedo {
	text-align: left;
}
.form {
	font-family: Verdana, Geneva, sans-serif;
	font-size: 12px;
	color: #000;
}
.esqued2 {
	text-align: right;
	font-family: Verdana, Geneva, sans-serif;
	font-size: 12px;
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
        <td width="660" align="left" valign="top" class="fundo"><p>
          <%

	 			      Class.forName("org.postgresql.Driver");
	 		          Connection con = DriverManager.getConnection("jdbc:postgresql://localhost/bagatela","postgres","12345");
				      Statement st = con.createStatement();
					  ResultSet rs;

			if (request.getParameter("acao") == null)
				{ 
				
				%>
        </p>
          <form id="form2" name="form2" method="post" action="mostra_produto.jsp?acao=gravar">
            <table width="541" border="0" cellpadding="0" cellspacing="0">
              <tr>
                <td colspan="4">&nbsp;</td>
              </tr>
              <tr>
                <td width="27">&nbsp;</td>
                <td width="150" align="left" valign="top"><img src="imagens/<%=request.getParameter("foto")%>.jpg" alt="" width="150" height="150" border="0" /></td>
                <td width="31">&nbsp;</td>
                <td width="305"><table width="319" border="0">
                  <tr>
                    <td width="313"><span class="style5">Produto</span>:<br />
                       <input name="tf_nome" type="text" class="form" id="tf_nome" value="<%=request.getParameter("nome")%>" size="40" maxlength="40" readonly="readonly" /></td>
                  </tr>
                  <tr>
                    <td valign="top"><p><span class="style5">Descri&ccedil;&atilde;o</span>:<br />
                        <textarea name="tf_descricao" cols="35" rows="5" readonly="readonly" class="form" id="tf_descricao"><%=request.getParameter("descricao")%></textarea>
                    </p></td>
                  </tr>
                  <tr>
                    <td height="21"><span class="style5">Pre&ccedil;o</span>: <span class="form">R$
<input name="tf_preco" type="text" class="esqued2" id="tf_preco" value="<%=request.getParameter("preco")%>" size="8" readonly="readonly" />
                      ,00</span></td>
                  </tr>
                </table>
                  <br /><table width="200" border="0" align="left" cellpadding="0" cellspacing="0">
                    <tr>
                      <td align="center"><span class="esquedo">
                        <input name="button" type="submit" id="button" value="Comprar" />
                      </span></td>
                    </tr>
                  </table>
                  <p class="esquedo">&nbsp;</p>
<p>&nbsp;</p></td>
              </tr>
            </table>
            <% }
		   else 
		   {
	   				     			
						//String sqlupdatepro = ("update produtos set pro_nome='"+request.getParameter("tf_nome")+"', pro_desc='"+request.getParameter("tf_descricao")+"', pro_cat='"+request.getParameter("lista_categoria")+"', pro_preco="+request.getParameter("tf_preco")+", pro_estoque="+request.getParameter("tf_estoque")+", pro_foto='"+request.getParameter("tf_foto")+"' where pro_cod="+request.getParameter("tf_codigo"));
						String sqlupdatepro = ("insert into carrinho(car_nome, car_preco) values('"+request.getParameter("tf_nome")+"',"+request.getParameter("tf_preco")+");update produtos set pro_estoque = pro_estoque-1 where pro_nome = '"+request.getParameter("tf_nome")+"'");
						
						
                  // out.print(sqlupdatepro);
				   st.executeUpdate(sqlupdatepro);
			  	   response.sendRedirect("pre_carrinho.jsp"); //vai para o usuario.jsp
				  
	   
		     
		}%>
            <p class="esqued2">&nbsp;</p>
          </form>
          <p>&nbsp;          </p>
          <p>&nbsp;</p>
          <p>&nbsp;</p></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td height="19" class="traco">&nbsp;</td>
  </tr>
</table>
<p class="esquedo">&nbsp;</p>
<p align="center" class="style1">&nbsp;</p>

<map name="Map" id="Map">
  <area shape="rect" coords="1,2,77,29" href="pre_carrinho.jsp" />
</map>
</body>
</html>
