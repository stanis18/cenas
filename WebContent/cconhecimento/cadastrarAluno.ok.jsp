<?xml version="1.0" encoding="iso-8859-1"?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>

<title>CenAS: Cen�rios de Aprendizagem</title>
<link rel="stylesheet" href="css/index.css" />
<link rel="shortcut icon" href="images/icone.png" />
<link rel="shortcut icon" href="../images/icone.png" />

</head>
<body>

<div id="topo"><img src="images/topoFonteRodrigo2BorboletasAlinhadas.png" width="778" height="107"
	alt="Intarmed - Curso M�dico Online" style="margin: 1px;" /></div>
<div id="branco">
<br/>
<fieldset>
<legend><h3><p style="color: black;">Cadastro Conclu�do</p></h3></legend>

<p style="color: red; width: 480px;font-size: 10px;">*Sua senha foi gerada com sucesso:</p>
<p style="color: red; width: 480px;font-size: 10px;">Login:${aluno.login}</p>
<p style="color: red; width: 480px;font-size: 10px;">Senha:${aluno.senha}</p>


<br />
<input type="button" value="Voltar a P�gina Inicial" onclick="javascript:window.location.href = 'index.jsp';"/>
</fieldset>

<br/>
<br/>
<br/>

<%@ include file="../rodape.jsp"%></div>
</body>
</html>
