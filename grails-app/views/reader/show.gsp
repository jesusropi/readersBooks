
<%@ page import="readersbooks.Reader" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'reader.label', default: 'Reader')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-reader" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-reader" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list reader">

				<g:if test="${readerInstance?.image}">
				<li class="fieldcontain">
					<span id="image-label" class="property-label"><g:message code="reader.image.label" default="Image" /></span>
					<img class="avatar" src="${resource(dir: 'upload/images', file: readerInstance.image.fileName)}" alt="Imagen"/>									
				</li>
				</g:if>
				<g:else>
					<li class="fieldcontain">
						<span id="image-label" class="property-label"><g:message code="reader.image.label" default="Image" /></span>
						<span class="property-value" aria-labelledby="image-label"><g:link controller="image" action="create" params="[readerId:readerInstance.id]">Añadir una imagen</g:link></span>
					</li>
				</g:else>
			
				<g:if test="${readerInstance?.userName}">
				<li class="fieldcontain">
					<span id="userName-label" class="property-label"><g:message code="reader.userName.label" default="User Name" /></span>
					
						<span class="property-value" aria-labelledby="userName-label"><g:fieldValue bean="${readerInstance}" field="userName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${readerInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="reader.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${readerInstance}" field="email"/></span>
					
				</li>
				</g:if>

				<g:if test="${readerInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="reader.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${readerInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${readerInstance?.firstName}">
				<li class="fieldcontain">
					<span id="firstName-label" class="property-label"><g:message code="reader.firstName.label" default="First Name" /></span>
					
						<span class="property-value" aria-labelledby="firstName-label"><g:fieldValue bean="${readerInstance}" field="firstName"/></span>
					
				</li>
				</g:if>

				<g:if test="${readerInstance?.lastName}">
				<li class="fieldcontain">
					<span id="lastName-label" class="property-label"><g:message code="reader.lastName.label" default="Last Name" /></span>
					
						<span class="property-value" aria-labelledby="lastName-label"><g:fieldValue bean="${readerInstance}" field="lastName"/></span>
					
				</li>
				</g:if>

				<g:if test="${readerInstance?.sex}">
				<li class="fieldcontain">
					<span id="sex-label" class="property-label"><g:message code="reader.sex.label" default="Sex" /></span>
					
						<span class="property-value" aria-labelledby="sex-label"><g:fieldValue bean="${readerInstance}" field="sex"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${readerInstance?.birthday}">
				<li class="fieldcontain">
					<span id="birthday-label" class="property-label"><g:message code="reader.birthday.label" default="Birthday" /></span>
					
						<span class="property-value" aria-labelledby="birthday-label"><g:formatDate date="${readerInstance?.birthday}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${readerInstance?.country}">
				<li class="fieldcontain">
					<span id="country-label" class="property-label"><g:message code="reader.country.label" default="Country" /></span>
					
						<span class="property-value" aria-labelledby="country-label"><g:link controller="country" action="show" id="${readerInstance?.country?.id}">${readerInstance?.country?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${readerInstance?.friends}">
				<li class="fieldcontain">
					<span id="friends-label" class="property-label"><g:message code="reader.friends.label" default="Friends" /></span>
					
						<g:each in="${readerInstance.friends}" var="f">
						<span class="property-value" aria-labelledby="friends-label"><g:link controller="reader" action="show" id="${f.id}">${f?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${readerInstance?.readBooks}">
				<li class="fieldcontain">
					<span id="readBooks-label" class="property-label"><g:message code="reader.readBooks.label" default="Read Books" /></span>
					
						<g:each in="${readerInstance.readBooks}" var="r">
						<span class="property-value" aria-labelledby="readBooks-label"><g:link controller="readBook" action="show" id="${r.id}">${r?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${readerInstance?.id}" />
					<g:link class="edit" action="edit" id="${readerInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
