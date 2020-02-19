<%@ page import="java.util.Calendar" %>
<%@ page import="com.boletobancario.boleto.html.BoletoHTMLFormatter" %>
<%@ page import="com.boletobancario.boleto.BoletoFactory" %>
<%
    // Gera um boleto personalizado na parte superior, em formato HTML.
    
    BoletoFactory factory = new BoletoFactory();
    
    factory.setBanco( BoletoFactory.BRADESCO );
    factory.setAgencia( "123" );
    factory.setCedente( "4567" );
    factory.setCarteira( "06" );
    factory.setNossoNumero( "525" );
    factory.setValor( "125,80" );
    factory.setVencimento( Calendar.getInstance() );
    
    factory.setNomeCedente( "Empresa Demonstra��o LTDA." );
    factory.setLocalPagamento( "Pag�vel em qualquer ag�ncia banc�ria at� o vencimento." );
    
    factory.setNomeSac( "Beltrano de Tal" );
    factory.setEnderecoSac( "R. Silas Salazar, 768 - 8� Andar" );
    factory.setCepSac( "12345678" );
    factory.setCidadeSac( "S�o Paulo" );
    factory.setEstadoSac( "SP" );
    
    factory.setMensagem( 1, "Ap�s o vencimento, entre em contato com nossa central de atendimento." );
    factory.setMensagem( 9, "[b]Sr. Caixa: Boleto Demonstrativo. N�o receber.[/b] Gerado por: [b]www.boletobancario.com[/b]" );
    factory.setAceite( "N�o" );
    

    String custom = "<img src=\"../imagens/logo.gif\" alt=\"Boleto Banc�rio . com\" /><br />";
    custom += "<br /><b>Descri��o da Compra</b>:<br />";
    custom += "<ul><li>Produto NONONONO.A - 2 Unidades: R$ 25,80</li>";
    custom += "<li>Produto NONONONO.B - 7 Unidades: R$ 77,00</li>";
    custom += "<li>Produto NONONONO.C - 2 Unidades: R$ 33,00</li></ul>";
    custom += "<b>Total da Fatura: R$ {valor}</b><br /><br /><hr />";
    
    factory.setCustomContent( custom );
    
    out.print( BoletoHTMLFormatter.asSlimWebPage( factory.createBoleto() ) );
%>
