<%@ page import="com.boletobancario.boleto.html.BoletoHTMLFormatter" %><%@
    page import="com.boletobancario.boleto.BoletoFactory" %><%
    
    
	// Exemplo utilizando dados estaticos. Na aplicacao real os dados devem ser atribuidos
	// dinamicamente.
	BoletoFactory factory = new BoletoFactory();
	
	factory.setBanco( BoletoFactory.BRADESCO );
	// Pode ser passado tambem o numero do banco no lugar da constante. Ex:
	//factory.setBanco( "237" );
	factory.setAgencia( "123" );
	factory.setCedente( "4567" );
	factory.setCarteira( "06" );
	factory.setNossoNumero( "378" );
	factory.setValor( "189,55" );
	factory.setVencimento( "29/05/2012" );
	
	
	factory.setNomeCedente( "Empresa Demonstra��o LTDA." );
	factory.setLocalPagamento( "Pag�vel em qualquer ag�ncia banc�ria at� o vencimento." );
	
	factory.setNomeSac( "Beltrano de Tal" );
	factory.setEnderecoSac( "R. Silas Salazar, 768 - 8� Andar" );
	
	factory.setCepSac( "12345678" );
	
	factory.setCidadeSac( "S�o Paulo" );
	factory.setEstadoSac( "SP" );
	
	factory.setMensagem( 1, "Ap�s o vencimento, entre em contato com nossa central de atendimento: [b]0800-00001[/b]." );
	
	out.print( BoletoHTMLFormatter.asSlimWebPage( factory.createBoleto() ) );
%>