<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page isErrorPage="true" %>

<!DOCTYPE html>
<html>

<head>

    <title>Livros - Detalhe</title>
    
    <spring:url value="/resources/css" var="css"/>
    <spring:url value="/sresources/js" var="js"/>
    
    <c:set value="${pageContext.request.contextPath}" var="contextPath"/>
    
    <link href="${css}/bootstrap.css" rel="stylesheet">
    <link href="${css}/small-business.css" rel="stylesheet">

</head>

<body>
    
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container">
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li>
                        <a href="${contextPath}/livro">Livros</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="well">
					
					<h2>Livros</h2>
					
						<div class="form-group">
							<label class="control-label" for="nome">Nome:</label>
							<b>${livro.nome }</b>
                        </div>
                        
                        <div class="form-group">
							<label class="control-label" for="autor">Autor</label>
							<label class="label label-default">${livro.autor }</label>
						</div>
						
						<div class="form-group">
							<label class="control-label" for="npaginas">Numero de páginas:</label>
							<label class="label label-default">${livro.npaginas }</label>
						</div>
						
						<div class="form-group">
							<label class="control-label" for="editora">Editora:</label>
							<label class="label label-default">${livro.editora }</label>
						</div>
						
						<div class="form-group">
							<label class="control-label" for="idioma">Idioma:</label>
							<label class="label label-default">${livro.idioma }</label>
						</div>
						<hr>
						
						<a class="btn btn-default btn-lg" href="${contextPath}/livro">Voltar</a>
                            
                        <br>
                        <br>
					
                </div>
            </div>
        </div>
    </div>

    <!-- jQuery -->
    <script src="${js}/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="${js}/bootstrap.min.js"></script>

</body>
</html>