<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" 
errorPage="" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<script language="javascript" src="funcoes/funcoes.js"></script>

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
	color: #0066FF;
	font-size: 24px;
	font-weight: bold;
	font-family: Verdana, Geneva, sans-serif;
}
.style9 {
	font-size: 36px
}
.style10 {
	font-size: 24px;
	font-weight: bold;
}
.rotulo {
	font-family: Verdana, Geneva, sans-serif;
	font-size: 12px;
}
-->
</style>
</head>

<body>
<p align="center"><span class="style1">Cadastro de Produtos</span></p>
            <span class="style10">
            <%

	 			      Class.forName("org.postgresql.Driver");
	 		          Connection con = DriverManager.getConnection("jdbc:postgresql://localhost/bagatela","postgres","12345");
				      Statement st = con.createStatement();
					  ResultSet rs;

			if (request.getParameter("acao") == null)
				{ 
				
				%>
            </span>
            <label></label>
<label></label>
        <label></label>
        <label></label>
<form action= 	"cadProdutos.jsp?acao=gravar" method="post" name="frmInserirCliente" id="frmInserirCliente" onsubmit="return validacaoform(this);">
  <table width="649" border="0" align="center" cellpadding="2" cellspacing="2">
    <tr>
      <td width="181" class="rotulo">C&oacute;digo.:</td>
      <td width="468"><input name="tf_codigo" type="text" disabled="disabled" class="rotulo" id="tf_codigo" value="autom&aacute;tico" size="15" maxlength="15"/></td>
    </tr>
    <tr>
      <td class="rotulo">Nome Produto:</td>
      <td><input name="tf_nome" type="text" class="rotulo" id="tf_nome" size="30" maxlength="30" /></td>
    </tr>
    <tr>
      <td class="rotulo">Categoria:</td>
      <td><select name="lista_categoria" class="rotulo" id="lista_categoria">
        <%
			     String sql = "select * from categoria order by cat_nome";
				 rs = st.executeQuery(sql);
				 while(rs.next())
				 { 
				    System.out.print(request.getParameter("categoria"));      
				 %>
        <option selected="selected"><%=rs.getString("cat_nome")%></option>
        <%
				 	 
				 }

                 %>
      </select></td>
    </tr>
    <tr>
      <td class="rotulo">Descri&ccedil;&atilde;o:</td>
      <td><input name="tf_desc" type="text" class="rotulo" id="tf_desc" size="65" maxlength="100" /></td>
    </tr>
    <tr>
      <td class="rotulo">Pre&ccedil;o:</td>
      <td class="rotulo">R$
        <input name="tf_preco" type="text" class="rotulo" id="tf_preco" size="10" maxlength="10"/>
        ,00</td>
    </tr>
    <tr>
      <td class="rotulo">Estoque:</td>
      <td><input name="tf_estoque" type="text" class="rotulo" id="tf_estoque" size="10" maxlength="10" /></td>
    </tr>
    <tr>
      <td class="rotulo">Foto.:</td>
      <td><input name="tf_foto" type="text" class="rotulo" id="tf_foto" size="30" maxlength="30" /></td>
    </tr>
    <tr>
      <td class="rotulo">Chave:</td>
      <td><input name="tf_chave" type="text" class="rotulo" id="tf_chave" size="30" maxlength="30" /></td>
    </tr>
  </table>
  <br />
  <table width="300" border="0" align="center" cellpadding="0" cellspacing="0">
    <tr>
      <td align="center"><input type="submit" name="gravar" id="gravar" value="gravar" /></td>
      <td align="center"><input type="reset" name="Limpar" id="Limpar" value="Limpar" /></td>
    </tr>
  </table>
  <p>
    <label></label>
  <label></label>
  </p>
</form>
<% }
		   else 
		   {
	   				     String sqlinsertcli = "insert into produtos (pro_nome, pro_cat, pro_desc, "+
            "pro_preco, pro_estoque, "+
            "pro_foto, pro_chave) "+
    			" VALUES ('"+request.getParameter("tf_nome")+
				"','"+request.getParameter("lista_categoria")+
				"','"+request.getParameter("tf_desc")+
				"','"+request.getParameter("tf_preco")+				
				"','"+request.getParameter("tf_estoque")+
				"','"+request.getParameter("tf_foto")+
				"','"+request.getParameter("tf_chave")+
				"')";
                   //out.print(sqlinsertcli);
				   st.executeUpdate(sqlinsertcli);
			  	   response.sendRedirect("produtos.jsp"); //vai para o usuario.jsp
				  
	   
		     
		}%>

<p align="center" class="style9">&nbsp;</p>
</body>
</html>
