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
	color: #06F;
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
.style12 {
	color: #FF0000;
	font-weight: bold;
	font-size: 18px;
}
.texto {
	font-family: Verdana, Geneva, sans-serif;
	font-size: 12px;
}
-->
</style>
</head>

<body>
<p align="center"><span class="style1">Altera&ccedil;&atilde;o dos dados do Produto</span></p>
            <p><span class="style10">
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
            </p>
  <form action= 	"alteraProdutos.jsp?acao=gravar" method="post" name="frmUpdateProdutos" id="frmUpdateProdutos" onsubmit="return validacaoform(this);">
    <table width="608" border="0" align="center" cellpadding="0" cellspacing="0">
    <tr>
      <td width="118" class="texto"><span class="texto">Código.:</span></td>
      <td width="490"><span class="texto">
        <input name="tf_codigo" type="text" id="tf_codigo" value="<%=request.getParameter("codigo")%>" size="15" maxlength="15" readonly="readonly"/>
      </span></td>
    </tr>
    <tr>
      <td><span class="texto">Nome Produto:</span></td>
      <td><span class="texto">
        <input name="tf_nome" type="text" id="tf_nome" value="<%=request.getParameter("nome")%>" size="40" maxlength="40" />
      </span></td>
    </tr>
    <tr>
      <td><span class="texto">Descri&ccedil;&atilde;o: </span></td>
      <td><span class="texto">
        <input name="tf_descricao" type="text" id="tf_descricao" value="<%=request.getParameter("descricao")%>" size="70" maxlength="100" />
      </span></td>
    </tr>
    <tr>
      <td><span class="texto">Categoria:</span></td>
      <td><span class="texto">
        <select name="lista_categoria" id="lista_categoria">
          <%
			     out.print(request.getParameter("categoria"));
			     String sql = "select * from categoria order by cat_nome";
				 rs = st.executeQuery(sql);
				 while(rs.next())
				 { %>
          <option value="<%=rs.getString("cat_nome")%>" selected="selected" <%if(rs.getString("cat_nome").equals(request.getParameter("categoria"))) out.print("selected");%>><%=rs.getString("cat_nome")%></option>
          <%}
				

                 %>
        </select>
      </span></td>
    </tr>
    <tr>
      <td><span class="texto">Pre&ccedil;o:</span></td>
      <td><span class="texto">
        <input name="tf_preco" type="text" id="tf_preco" value="<%=request.getParameter("preco")%>" size="40" maxlength="40" />
      </span></td>
    </tr>
    <tr>
      <td><span class="texto">Estoque:</span></td>
      <td><span class="texto">
        <input name="tf_estoque" type="text" id="tf_estoque" value="<%=request.getParameter("estoque")%>" size="40" maxlength="40" />
      </span></td>
    </tr>
    <tr>
      <td><span class="texto">Foto:</span></td>
      <td><span class="texto">
        <input name="tf_foto" type="text" id="tf_foto" value="<%=request.getParameter("foto")%>" size="40" maxlength="40" />
      </span></td>
    </tr>
    <tr>
      <td><span class="texto">Chave:</span></td>
      <td><span class="texto">
        <input name="tf_chave" type="text" id="tf_chave" value="<%=request.getParameter("chave")%>" size="40" maxlength="40" />
      </span></td>
    </tr>
    </table>
  <br /><table width="143" border="0" align="center" cellpadding="0" cellspacing="0">
    <tr>
      <td width="74"><input type="submit" name="gravar" id="gravar" value="gravar" /></td>
      <td width="69"><input type="reset" name="Limpar" id="Limpar" value="Limpar" /></td>
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
	   				     			
						String sqlupdatepro = ("update produtos set pro_nome='"+request.getParameter("tf_nome")+"', pro_desc='"+request.getParameter("tf_descricao")+"', pro_cat='"+request.getParameter("lista_categoria")+"', pro_preco='"+request.getParameter("tf_preco")+"', pro_estoque='"+request.getParameter("tf_estoque")+"', pro_foto='"+request.getParameter("tf_foto")+"', pro_chave='"+request.getParameter("tf_chave")+"' where pro_cod="+request.getParameter("tf_codigo"));
						
						
                   //out.print(sqlupdatepro);
				   st.executeUpdate(sqlupdatepro);
			  	   response.sendRedirect("produtos.jsp"); //vai para o usuario.jsp
				  
	   
		     
		}%>
<p>&nbsp;</p>
</body>
</html>
