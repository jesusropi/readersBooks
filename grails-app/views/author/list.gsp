
<%@ page import="readersbooks.Author" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'author.label', default: 'Author')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-author" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-author" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>

						<th><g:message code="author.image.label" default="Image" /></th>
		
						<g:sortableColumn property="name" title="${message(code: 'author.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="firstName" title="${message(code: 'author.firstName.label', default: 'First Name')}" />
					
						<g:sortableColumn property="birthday" title="${message(code: 'author.birthday.label', default: 'Birthday')}" />
					
						<th><g:message code="author.country.label" default="Country" /></th>
					
						<g:sortableColumn property="lastName" title="${message(code: 'author.lastName.label', default: 'Last Name')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${authorInstanceList}" status="i" var="authorInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

						<td>
							<g:if test="${authorInstance.image}">
								<img class="avatar" src="${resource(dir: 'upload/images', file: authorInstance.image.fileName)}" alt="Imagen"/>
							</g:if>
							<g:else>
								<img class="avatar" src="${resource(dir: 'upload/images', file: 'default-avatar.gif')}" alt="Imagen"/>
							</g:else>	
						</td>
					
						<td><g:link action="show" id="${authorInstance.id}">${fieldValue(bean: authorInstance, field: "name")}</g:link></td>
					
						<td>${fieldValue(bean: authorInstance, field: "firstName")}</td>
					
						<td><g:formatDate date="${authorInstance.birthday}" /></td>
					
						<td>${fieldValue(bean: authorInstance, field: "country")}</td>
					
						<td>${fieldValue(bean: authorInstance, field: "lastName")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${authorInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
