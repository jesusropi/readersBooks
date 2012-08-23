
<%@ page import="readersbooks.Reader" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'reader.label', default: 'Reader')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-reader" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-reader" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<th><g:message code="reader.image.label" default="Image" /></th>
					
						<g:sortableColumn property="name" title="${message(code: 'reader.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="firstName" title="${message(code: 'reader.firstName.label', default: 'First Name')}" />
					
						<g:sortableColumn property="birthday" title="${message(code: 'reader.birthday.label', default: 'Birthday')}" />
					
						<th><g:message code="reader.country.label" default="Country" /></th>
					
						<g:sortableColumn property="userName" title="${message(code: 'reader.userName.label', default: 'User Name')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${readerInstanceList}" status="i" var="readerInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td>
							<g:if test="${readerInstance.image}">
								<img class="avatar" src="${resource(dir: 'upload/images', file: readerInstance.image.fileName)}" alt="Imagen"/>
							</g:if>
							<g:else>
								<img class="avatar" src="${resource(dir: 'upload/images', file: 'default-avatar.gif')}" alt="Imagen"/>
							</g:else>	
						</td>
						
						<td><g:link action="show" id="${readerInstance.id}">${fieldValue(bean: readerInstance, field: "name")}</g:link></td>
					
						<td>${fieldValue(bean: readerInstance, field: "firstName")}</td>
					
						<td><g:formatDate date="${readerInstance.birthday}" /></td>
					
						<td>${fieldValue(bean: readerInstance, field: "country")}</td>
					
						<td>${fieldValue(bean: readerInstance, field: "userName")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${readerInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
