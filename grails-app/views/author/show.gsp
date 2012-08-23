
<%@ page import="readersbooks.Author" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'author.label', default: 'Author')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-author" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-author" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list author">
			
				<g:if test="${authorInstance?.image}">
				<li class="fieldcontain">
					<span id="image-label" class="property-label"><g:message code="author.image.label" default="Image" /></span>
					<img class="avatar" src="${resource(dir: 'upload/images', file: authorInstance.image.fileName)}" alt="Imagen"/>									
				</li>
				</g:if>
				<g:else>
					<li class="fieldcontain">
						<span id="image-label" class="property-label"><g:message code="author.image.label" default="Image" /></span>
						<span class="property-value" aria-labelledby="image-label"><g:link controller="image" action="create" params="[authorId:authorInstance.id]">Añadir una imagen</g:link></span>
					</li>
				</g:else>
			
				<g:if test="${authorInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="author.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${authorInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${authorInstance?.firstName}">
				<li class="fieldcontain">
					<span id="firstName-label" class="property-label"><g:message code="author.firstName.label" default="First Name" /></span>
					
						<span class="property-value" aria-labelledby="firstName-label"><g:fieldValue bean="${authorInstance}" field="firstName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${authorInstance?.birthday}">
				<li class="fieldcontain">
					<span id="birthday-label" class="property-label"><g:message code="author.birthday.label" default="Birthday" /></span>
					
						<span class="property-value" aria-labelledby="birthday-label"><g:formatDate date="${authorInstance?.birthday}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${authorInstance?.country}">
				<li class="fieldcontain">
					<span id="country-label" class="property-label"><g:message code="author.country.label" default="Country" /></span>
					
						<span class="property-value" aria-labelledby="country-label"><g:link controller="country" action="show" id="${authorInstance?.country?.id}">${authorInstance?.country?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			
				<g:if test="${authorInstance?.books}">
				<li class="fieldcontain">
					<span id="books-label" class="property-label"><g:message code="author.books.label" default="Books" /></span>
					
						<g:each in="${authorInstance.books}" var="b">
						<span class="property-value" aria-labelledby="books-label"><g:link controller="book" action="show" id="${b.id}">${b?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${authorInstance?.lastName}">
				<li class="fieldcontain">
					<span id="lastName-label" class="property-label"><g:message code="author.lastName.label" default="Last Name" /></span>
					
						<span class="property-value" aria-labelledby="lastName-label"><g:fieldValue bean="${authorInstance}" field="lastName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${authorInstance?.sex}">
				<li class="fieldcontain">
					<span id="sex-label" class="property-label"><g:message code="author.sex.label" default="Sex" /></span>
					
						<span class="property-value" aria-labelledby="sex-label"><g:fieldValue bean="${authorInstance}" field="sex"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${authorInstance?.id}" />
					<g:link class="edit" action="edit" id="${authorInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
