<%@ page import="java.io.File" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
		"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="pt" lang="pt">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
		<title>Boleto Bancário . com - Exemplos</title>
		<link rel="shortcut icon" href="http://www.boletobancario.com/favicon.ico" />
		<link href="css/estilo.css" rel="stylesheet" type="text/css" title="Boleto" />
	</head>
	<body>
		<div id="mestre">
			<div id="cabecalho">
				<a href="http://www.boletobancario.com/"><img src="imagens/logo.png" alt="Boleto Bancário . com" /></a>
				<h1>Boleto Bancário . com</h1>
				<h2>Desde 2000 no mercado de emissão de boletos!</h2>
			</div>
			<div id="conteudo">
				<h2>O Boleto Web/Free pode gerar boletos em dois formatos, <strong>HTML e PDF</strong>.
				O primeiro é indicado para exibição do boleto em uma página na Internet e o segundo é indicado para o envio do boleto por e-mail, por exemplo, ao final de uma transação online.</h2>
				<h2>Para visualizar o código fonte dos exemplos acesse a pasta <strong><%= getServletContext().getRealPath("") + System.getProperty( "file.separator" ) + "samples" %></strong></h2>
				<dl class="menu">
					<dt>Exemplos</dt>
					<dd><a href="./samples/boletoCustom.jsp">Boleto carregando dados estáticos - Customizado</a></dd>
					<dd><a href="./samples/form.html">Boleto carregando dados de um formulário (interativo)</a></dd>
					<dd><a href="./samples/boletoPDFCustom.jsp">Boleto formato PDF - Customizado</a></dd>
					<dd><a href="./samples/boletoPDF.jsp">Boleto formato PDF</a></dd>
					<dd><a href="./samples/boletoMultiple.jsp">Múltiplos Boletos em um documento HTML</a></dd>
					<dd><a href="./samples/boletoMultiplePDF.jsp">Múltiplos Boletos em um documento PDF</a></dd>
					<dd><a href="./samples/mailSim.jsp">Simulação de recebimento de email com Boleto PDF</a></dd>
					<dd><a href="./samples/boletoDB.jsp">Boleto carregando dados de um banco de dados</a></dd>
					<dd><a href="./samples/boleto.jsp">Boleto carregando dados estáticos</a></dd>
				</dl>
				<dl class="menu">
					<dt>Documentação</dt>
					<dd><a href="./docs/war-content.html">Conteúdo do Pacote</a></dd>
					<dd><a href="./docs/javadoc/index.html">Documentação da API</a></dd>
					<dd><a href="./docs/custompdf.html">Manual de customização do formato PDF</a></dd>
					<dd><a href="./docs/releasenotes.txt">Release notes</a></dd>
					<dd><a href="./docs/fields.html">Tamanhos de campos</a></dd>
				</dl>
				<h3>Em caso de dúvidas consulte as perguntas mais frequentes no endereço: <a href="http://www.boletobancario.com/home/faq/">http://www.boletobancario.com/home/faq/</a> ou entre em contato com nosso suporte técnico através do endereço <a href="https://www.boletobancario.com/home/contato/">https://www.boletobancario.com/home/contato/</a></h3>
			</div>
			<div id="rodape"><address>Rua Des. Ermelino de Leão, 35 - 3º Andar - Centro - Curitiba - PR<br /></address></div>
		</div>
	</body>
</html>