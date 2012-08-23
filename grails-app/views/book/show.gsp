
<%@ page import="readersbooks.Book" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'book.label', default: 'Book')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-book" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-book" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list book">

				<g:if test="${bookInstance?.image}">
				<li class="fieldcontain">
					<span id="image-label" class="property-label"><g:message code="book.image.label" default="Image" /></span>
					<img class="avatar" src="${resource(dir: 'upload/images', file: bookInstance.image.fileName)}" alt="Imagen"/>									
				</li>
				</g:if>
				<g:else>
					<li class="fieldcontain">
						<span id="image-label" class="property-label"><g:message code="book.image.label" default="Image" /></span>
						<span class="property-value" aria-labelledby="image-label"><g:link controller="image" action="create" params="[bookId:bookInstance.id]">Añadir una imagen</g:link></span>
					</li>
				</g:else>

			
				<g:if test="${bookInstance?.ISBN}">
				<li class="fieldcontain">
					<span id="ISBN-label" class="property-label"><g:message code="book.ISBN.label" default="ISBN" /></span>
					
						<span class="property-value" aria-labelledby="ISBN-label"><g:fieldValue bean="${bookInstance}" field="ISBN"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${bookInstance?.editorial}">
				<li class="fieldcontain">
					<span id="editorial-label" class="property-label"><g:message code="book.editorial.label" default="Editorial" /></span>
					
						<span class="property-value" aria-labelledby="editorial-label"><g:fieldValue bean="${bookInstance}" field="editorial"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${bookInstance?.synopsis}">
				<li class="fieldcontain">
					<span id="synopsis-label" class="property-label"><g:message code="book.synopsis.label" default="Synopsis" /></span>
					
						<span class="property-value" aria-labelledby="synopsis-label"><g:fieldValue bean="${bookInstance}" field="synopsis"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${bookInstance?.title}">
				<li class="fieldcontain">
					<span id="title-label" class="property-label"><g:message code="book.title.label" default="Title" /></span>
					
						<span class="property-value" aria-labelledby="title-label"><g:fieldValue bean="${bookInstance}" field="title"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${bookInstance?.year}">
				<li class="fieldcontain">
					<span id="year-label" class="property-label"><g:message code="book.year.label" default="Year" /></span>
					
						<span class="property-value" aria-labelledby="year-label"><g:formatDate date="${bookInstance?.year}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${bookInstance?.id}" />
					<g:link class="edit" action="edit" id="${bookInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
