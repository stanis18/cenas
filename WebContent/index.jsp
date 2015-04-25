<?xml version="1.0" encoding="iso-8859-1"?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>

<title>CenAS: Cen�rios de Aprendizagem</title>
<link rel="stylesheet" href="css/index.css" />
<link rel="shortcut icon" href="images/icone.png" />

</head>
<body>



<div id="topo"><img src="images/topoFonteRodrigo2BorboletasAlinhadas.png" width="778" height="107"
	alt="Intramed - Curso M�dico Online" style="margin: 1px;" /></div>
<div id="branco">
<div id="texto">
<h2>CenAS</h2>
<p>Este � o sistema CenAS, um ambiente de aprendizagem para constru��o do conhecimento em sa�de. Este sistema tem como objetivo apresentar ao estudante de Medicina uma forma sistem�tica e estruturada para o desenvolvimento de temas de sa�de, orientando o estudante a percorrer e a documentar as principais etapas envolvidas neste processo. O sistema foi desenvolvido utilizando conceitos da Problematiza��o. Procura promover o trabalho em equipe entre os estudantes de gradua��o, al�m de possibilitar a integra��o desses com estudantes de p�s-gradua��o que atuam como tutores das equipes no estudo dos temas de sa�de. Desta forma, a utiliza��o do sistema auxilia o desenvolvimento do estudante, dotando-o de autonomia e de motiva��o no estudo de temas pr�ticos, relacionando-os a uma determinada �rea de conhecimento.</p>
</div>
<div id="texto2">
<p>Conhe�a os temas de s�ude que est�o sendo estudados pelas equipes de alunos do Curso de Medicina da UFPE. <a
	href="cconhecimento.acessoLivre.logic">Acesso livre</a>.</p>
</div>
<form name="login" action="cconhecimento.login.logic" method="post">

	<%if (request.getParameter("expirou") != null) {%>
		<div id="errologin">
			sess&atilde;o expirada.
		</div>
	<%} %>
	<%if (request.getParameter("usuario.login") != null) {%>
		<div id="errologin">
			Login/senha incorretos. Por favor, tente novamente.
		</div>
	<%} %>
	<%if (request.getParameter("erroLogin") != null) {%>
		<div id="errologin">
			Login/senha incorretos. Por favor, tente novamente.
		</div>
	<%} %>
<div id="login">
	
	<table class="login">
	
	<tr>
		<td>Login</td>
		<td align="right"><input type="text" name="usuario.login" class="logon" /></td>
	</tr>
		<tr>
		<td>Senha</td>
		<td align="right"><input type="password" name="usuario.senha" class="logon" /></td>
	</tr>
	<tr>
		<td></td>
		<td align="right">
			<input type="submit" value="Entrar" class="button" name="cadastrar"/>
		</td>
	</tr>
</table>
	
	<div class="div-esqueceu-senha">
		<a href="esqueceusenha.recuperarsenha.logic">Esqueceu sua senha?</a>	
	</div>
		
		<br/>
		<br/>
		<br/>
		<br/>
		<table>
		<tr>
		<td><b>Ainda n�o cadastrado?</b></td>
		<td><a href="cconhecimento.formularioCadastroAluno.logic"><img align="right" src="images/cadastrar.jpg"></img></a></td>
		</tr>
		
		<tr>
		<td><b>F�rum do CenAS</b></td>
		<td><a href="http://www.ideias.ufpe.br/phpBB3"><img align="right" src="images/forum.jpg"></img></a></td>
		</tr>
		</table>
</div>

</form>

<%@ include file="rodape.jsp"%></div>
</body>
</html>
