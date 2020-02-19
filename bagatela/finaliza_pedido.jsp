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
	font-family: Verdana, Geneva, sans-serif;
	font-size: 12px;
}
.style5 {
	color: #000;
	font-family: Verdana, Geneva, sans-serif;
	font-size: 12px;
	font-weight: bold;
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
	font-size: 10px;
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
	font-family: Verdana, Geneva, sans-serif;
	text-align: right;
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
	text-align: left;
}
.texto {
	font-family: Verdana, Geneva, sans-serif;
	font-size: 12px;
}
.titul {
	font-family: Verdana, Geneva, sans-serif;
	font-weight: bold;
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
        <td width="660" valign="top" class="fundo"><table width="224" border="0" align="center">
          <tr>
            <td width="218" align="center" class="titul">Finalizando Pedido</td>
          </tr>
        </table>
          <form id="form2" name="form2" method="post" action="gera_boleto.jsp">
            <p>&nbsp;</p>
            <table width="476" border="0" align="center">
              <tr>
                <td width="466" align="center" class="texto">O Valor do seu pedido &eacute; de: <span class="preco">R$</span>
<label>
  <input name="tf_preco" type="text" class="preco" id="tf_preco" value="<% 
		   	   				     			
			try {
    //instancia classe de conexao
    //Conexao conexao = new Conexao("localhost", "banco", "user", "senha");
    //conecta no banco
    //Connection connection = conexao.connect();

		Class.forName("org.postgresql.Driver");

	   	Connection con = DriverManager.getConnection("jdbc:postgresql://localhost/bagatela","postgres","12345");

			
			Statement st = con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,
	        ResultSet.CONCUR_READ_ONLY); 

    //cria o statment e realiza a consulta
    //Statement st = connection.createStatement();
    String sql = "SELECT SUM(car_preco) FROM carrinho";
    ResultSet rs = st.executeQuery(sql);

    while(rs.next()) {
        out.println(rs.getString(1)); //mostra o campo 1
    
	}

    //fecha a conexao com o banco
   // connection.close();
}
catch(Exception e) {
    out.println(e.toString());
}

   
		%>" size="9" />
  <span class="preco">,00</span></label>                
                    <label></label>
                </td>
              </tr>
            </table><br />
            <table width="450" border="0" align="center" cellpadding="0" cellspacing="0">
              <tr>
                <td><span class="texto">Para gerar o pedido, favor preencher os campos abaixo e em seguida clicar em PROSSEGUIR.</span></td>
              </tr>
            </table><br />
            <table width="537" border="0" align="center">
              <tr>
                <td width="161"><span class="texto">Nome do Comprador:</span></td>
                <td width="360"><span class="texto">
                  <input name="tf_nome" type="text" id="tf_nome" size="30" maxlength="30" />
                </span></td>
              </tr>
              <tr>
                <td><span class="texto">Endere&ccedil;o de Entrega</span></td>
                <td><span class="texto">
                  <input name="tf_end" type="text" id="tf_end" size="30" maxlength="30" />
                </span></td>
              </tr>
              <tr>
                <td><span class="texto">Cidade:</span></td>
                <td><span class="texto">
                  <input name="tf_cidade" type="text" id="tf_cidade" size="20" maxlength="20" />
                </span></td>
              </tr>
              <tr>
                <td><span class="texto">Estado:</span></td>
                <td><span class="texto">
                  <input name="tf_estado" type="text" id="tf_estado" size="2" maxlength="2" />
                  Cep: <input name="tf_cep" type="text" id="tf_cep" size="8" maxlength="8" />
                &quot;sem tra&ccedil;o&quot;</span></td>
              </tr>
            </table><br />
            <table width="200" border="0" align="center">
              <tr>
                <td align="center"><input type="submit" name="button" id="button" value="Prosseguir" /></td>
              </tr>
            </table>
          </form></td>
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
