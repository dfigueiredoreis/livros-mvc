<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>

<head>

    <title>Livros - Cadastro</title>
    
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
        <div class="row">
            <div class="col-lg-12">
                <div class="well">
					
					<h2>Livros</h2>
					
					<form:form modelAttribute="livroModel" action="${contextPath}/livro" method="post">
						<spring:hasBindErrors name="livroModel">
							<div class="alert alert-danger" role="alert">
								<form:errors path="*" class="has-error" />
							</div>
						</spring:hasBindErrors>

						<div class="form-group">
							<label class="control-label" for="nome">Nome:</label>
							<form:input type="text" path="nome" name="nome" id="nome" value="" class="form-control"/>
							<font color="red">
								<form:errors path="nome" />
							</font><br/>
                        </div>
                        <div class="form-group">
							<label class="control-label" for="autor">Autor:</label>
							<form:input type="text" path="autor" name="autor" id="autor" value="" class="form-control"/>
							<font color="red">
								<form:errors path="autor" />
							</font><br/>
						</div>
						
						<div class="form-group">
							<label class="control-label" for="npaginas">Numero de Páginas:</label>
							<form:input type="text" path="npaginas" name="npaginas" id="npaginas" value="" class="form-control"  />
						</div>
						
						<div class="form-group">
							<label class="control-label" for="editora">Editora:</label>
							<form:input type="text" id="editora" path="editora" name="editora" class="form-control" />
						</div>
						
						<div class="form-group">
							<label class="control-label" for="idioma">Idioma:</label>
							<form:input type="text" id="idioma" path="idioma" name="idioma" class="form-control" />
							<font color="red">
								<form:errors path="idioma" />
							</font><br/>
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