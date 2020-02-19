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
    
    factory.setNomeCedente( "Empresa Demonstração LTDA." );
    factory.setLocalPagamento( "Pagável em qualquer agência bancária até o vencimento." );
    
    factory.setNomeSac( "Beltrano de Tal" );
    factory.setEnderecoSac( "R. Silas Salazar, 768 - 8º Andar" );
    factory.setCepSac( "12345678" );
    factory.setCidadeSac( "São Paulo" );
    factory.setEstadoSac( "SP" );
    
    factory.setMensagem( 1, "Após o vencimento, entre em contato com nossa central de atendimento." );
    factory.setMensagem( 9, "[b]Sr. Caixa: Boleto Demonstrativo. Não receber.[/b] Gerado por: [b]www.boletobancario.com[/b]" );
    factory.setAceite( "Não" );
    

    String custom = "<img src=\"../imagens/logo.gif\" alt=\"Boleto Bancário . com\" /><br />";
    custom += "<br /><b>Descrição da Compra</b>:<br />";
    custom += "<ul><li>Produto NONONONO.A - 2 Unidades: R$ 25,80</li>";
    custom += "<li>Produto NONONONO.B - 7 Unidades: R$ 77,00</li>";
    custom += "<li>Produto NONONONO.C - 2 Unidades: R$ 33,00</li></ul>";
    custom += "<b>Total da Fatura: R$ {valor}</b><br /><br /><hr />";
    
    factory.setCustomContent( custom );
    
    out.print( BoletoHTMLFormatter.asSlimWebPage( factory.createBoleto() ) );
%>
