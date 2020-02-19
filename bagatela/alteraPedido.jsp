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
	color: #000;
}
-->
</style>
</head>

<body>
<p align="center"><span class="style1">Altera&ccedil;&atilde;o de Status do Pedido</span></p>
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
<form action= 	"alteraPedido.jsp?acao=gravar" method="post" name="frmUpdateProdutos" id="frmUpdateProdutos" onsubmit="return validacaoform(this);">
  <table width="599" border="0" align="center" cellpadding="0" cellspacing="0">
    <tr>
      <td width="145" class="texto"><span class="texto">Código.:</span></td>
      <td width="454"><span class="texto">
        <input name="tf_codigo" type="text" id="tf_codigo" value="<%=request.getParameter("codigo")%>" size="15" maxlength="15" readonly="readonly"/>
      </span></td>
    </tr>
    <tr>
      <td><span class="texto">Nome Comprador: </span></td>
      <td><span class="texto">
        <input name="tf_nome" type="text" id="tf_nome" value="<%=request.getParameter("nome")%>" size="40" maxlength="40" readonly="readonly" />
      </span></td>
    </tr>
    <tr>
      <td><span class="texto">
        <label>Status:</label>
      </span></td>
      <td><span class="texto">
        <select name="lista_status" id="lista_status">
          <%
			     out.print(request.getParameter("status"));
			     String sql = "select * from status order by sta_nome";
				 rs = st.executeQuery(sql);
				 while(rs.next())
				 { %>
          <option value="<%=rs.getString("sta_nome")%>" selected="selected" <%if(rs.getString("sta_nome").equals(request.getParameter("status"))) out.print("selected");%>><%=rs.getString("sta_nome")%></option>
          <%}
				

                 %>
        </select>
      </span></td>
    </tr>
    <tr>
      <td><span class="texto">Endere&ccedil;o:</span></td>
      <td><span class="texto">
        <input name="tf_end" type="text" id="tf_end" value="<%=request.getParameter("endereco")%>" size="70" maxlength="100" readonly="readonly" />
      </span></td>
    </tr>
    <tr>
      <td><span class="texto">Cidade:</span></td>
      <td><span class="texto">
        <input name="tf_cidade" type="text" id="tf_cidade" value="<%=request.getParameter("cidade")%>" size="40" maxlength="40" readonly="readonly" />
      </span></td>
    </tr>
    <tr>
      <td><span class="texto">Estado: </span></td>
      <td><span class="texto">
        <input name="tf_estado" type="text" id="tf_estado" value="<%=request.getParameter("estado")%>" size="40" maxlength="40" readonly="readonly" />
      </span></td>
    </tr>
    <tr>
      <td><span class="texto">CEP:</span></td>
      <td><span class="texto">
        <input name="tf_cep" type="text" id="tf_cep" value="<%=request.getParameter("cep")%>" size="40" maxlength="40" readonly="readonly" />
      </span></td>
    </tr>
    <tr>
      <td><span class="texto">Valor:</span></td>
      <td><span class="texto">
        <input name="tf_valor" type="text" id="tf_valor" value="<%=request.getParameter("valor")%>" size="40" maxlength="40" readonly="readonly" />
      </span></td>
    </tr>
  </table><br />
  <table width="182" border="0" align="center" cellpadding="0" cellspacing="0">
    <tr>
      <td width="93"><input type="submit" name="gravar" id="gravar" value="gravar" /></td>
      <td width="89"><input type="reset" name="Limpar" id="Limpar" value="Limpar" /></td>
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
	   				     			
						String sqlupdatepro = ("update pedidos set ped_nome='"+request.getParameter("tf_nome")+"', ped_end='"+request.getParameter("tf_end")+"', ped_status='"+request.getParameter("lista_status")+"', ped_valor="+request.getParameter("tf_valor")+", ped_cidade='"+request.getParameter("tf_cidade")+"', ped_cep='"+request.getParameter("tf_cep")+"', ped_estado='"+request.getParameter("tf_estado")+"' where ped_cod="+request.getParameter("tf_codigo"));
						
						
                   //out.print(sqlupdatepro);
				   st.executeUpdate(sqlupdatepro);
			  	   response.sendRedirect("pedido_menu.jsp"); //vai para o usuario.jsp
				  
	   
		     
		}%>
<p>&nbsp;</p>
</body>
</html>
