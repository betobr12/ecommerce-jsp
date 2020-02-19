<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>

<body>
<% 
		   	   				     			
			try {
    	Class.forName("org.postgresql.Driver");
	   	Connection con = DriverManager.getConnection("jdbc:postgresql://localhost/bagatela","postgres","12345");
			
		Statement st = con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,
        ResultSet.CONCUR_READ_ONLY); 

	    String sql = "update autenticacao set aut_valor='NAO' where aut_cod=1";
    	ResultSet rs = st.executeQuery(sql);
		
    while(rs.next()) {
       // out.println(rs.getString(1) + "<br />");
    }

    }
catch(Exception e) {
   //out.println(e.toString());
   response.sendRedirect("index.jsp");
}

   
		%>

</body>
</html>