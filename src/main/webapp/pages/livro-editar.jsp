<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true" %>

<!DOCTYPE html>
<html>

<head>

    <title>Livros - Editar</title>
    
    <spring:url value="/resources/css" var="css"/>
    <spring:url value="/resources/js" var="js"/>
    
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
        <!-- Call to Action Well -->
        <div class="row">
            <div class="col-lg-12">
                <div class="well">
					
					<h2>Livro</h2>
					
					<form:form action="${contextPath}/livro" method="put">
					
						<div class="form-group">
							<input type="hidden" name="id" id="id" value="${livro.id}" />
                       
                        </div>
						
						<div class="form-group">
							<label class="control-label" for="nome">Nome:</label>
							<input type="text" name="nome" id="nome" value="${livro.nome}" class="form-control" maxlength="50" size="50" />
                        </div>
                        <div class="form-group">
							<label class="control-label" for="autor">Autor:</label>
							<input type="text" name="autor" id="autor" value="${livro.autor}" class="form-control" maxlength="50" size="50" />
						</div>
						
						<div class="form-group">
							<label class="control-label" for="npaginas">Número de páginas:</label>
							<input id="npaginas" class="form-control" name="npaginas" value="${livro.npaginas}"/>
						</div>
						
						<div class="form-group">
							<label class="control-label" for="editora">Editora:</label>
							<input type="text" name="editora" id="editora" value="${livro.editora}" class="form-control"/>
						</div>
						
						<div class="form-group">
							<label class="control-label" for="idioma">Idioma:</label>
							<input type="text" name="idioma" id="idioma" value="${livro.idioma}" class="form-control"/>
						</div>
						<hr>
						
						<a class="btn btn-default btn-lg" href="${contextPath}/livro">Cancelar</a>
						<button type="submit" class="btn btn-primary btn-lg">Gravar</button>
                            
                        <br>
                        <br>
					</form:form>
					
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