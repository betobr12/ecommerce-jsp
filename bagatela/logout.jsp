<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>

<body>
<%
      try
	  {
			//1º carregar o driver
			Class.forName("org.postgresql.Driver");
			Connection con = DriverManager.getConnection("jdbc:postgresql://localhost/bagatela","postgres","12345");
			//out.println("Conexão com sucesso");
			
			
			{
				Statement st = con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,
	            ResultSet.CONCUR_READ_ONLY); 
				//out.println("passou pelo statement");
				//Bagatela
			
			
				ResultSet rs = st.executeQuery("select * from autenticacao where aut_valor = 'SIM'");
			
				if (rs.next())
				{
				    			
					//Statement ab = con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,
        			//ResultSet.CONCUR_READ_ONLY); 
					//String sql = "update autenticacao set aut_valor='NAO' where aut_cod=1";
					//ResultSet ab = st.executeQuery(sql);
					//Statement sq = con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,
					//ResultSet.CONCUR_READ_ONLY);
					//ResultSet sql = sq.executeQuery("update autenticacao set aut_valor='NAO' where aut_cod=1");
					response.sendRedirect("logoutfinal.jsp");
				   //out.println("Bem vindo ao sistema");
				}   
				else
				   response.sendRedirect("login_user.jsp");   
			
			}


			
			//while(rs.next())
			//   out.println("usuario = "+ rs.getString("log_usuario"));
			
			
					
			
		
		  		  
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

</body>
</html>