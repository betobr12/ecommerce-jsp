// JavaScript Document
function validacaoform(formulario)
{
    if (formulario.tf_nome.value == "")
	{
	    alert("O campo nome n�o pode ser vazio");
		formulario.tf_nome.focus();
		return false;
	}
	if (formulario.tf_numero.value == "")
	{
	    alert("O campo N�mero n�o pode ser vazio");
		formulario.tf_numero.focus();
		return false;
	}
	if (formulario.tf_rg.value == "")
	{
	    alert("O campo RG n�o pode ser vazio");
		formulario.tf_rg.focus();
		return false;
	}
	if (formulario.tf_cpf.value == "")
	{
	    alert("O campo CPF n�o pode ser vazio");
		formulario.tf_cpf.focus();
		return false;
	}
	if (formulario.tf_datanasc.value == "")
	{
	    alert("O campo Data Nascimento n�o pode ser vazio");
		formulario.tf_datanasc.focus();
		return false;
	}
}
//fun��o para a cria��o de m�scaras nos campos
function formata_mascara(campo_passado, mascara) 
{
	var campo = campo_passado.value.length;
	var saida = mascara.substring(0,1);
	var texto = mascara.substring(campo);
	if(texto.substring(0,1) != saida) 
	{
		campo_passado.value += texto.substring(0,1);
    }			
}

function Numero(e)
{
	navegador = /msie/i.test(navigator.userAgent);
	if (navegador)
		var tecla = event.keyCode;
	else
		var tecla = e.which;
	
	if(tecla > 47 && tecla < 58) // numeros de 0 a 9
		return true;
	else
		{
			if (tecla != 8) // backspace
				return false;
			else
				return true;
		}
	}



