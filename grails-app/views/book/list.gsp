
<%@ page import="readersbooks.Book" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'book.label', default: 'Book')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-book" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-book" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<th><g:message code="book.image.label" default="Image" /></th>
						
						<g:sortableColumn property="ISBN" title="${message(code: 'book.ISBN.label', default: 'ISBN')}" />
					
						<g:sortableColumn property="editorial" title="${message(code: 'book.editorial.label', default: 'Editorial')}" />
					
						<g:sortableColumn property="synopsis" title="${message(code: 'book.synopsis.label', default: 'Synopsis')}" />
					
						<g:sortableColumn property="title" title="${message(code: 'book.title.label', default: 'Title')}" />
					
						<g:sortableColumn property="year" title="${message(code: 'book.year.label', default: 'Year')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${bookInstanceList}" status="i" var="bookInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td>
							<g:if test="${bookInstance.image}">
								<img class="avatar" src="${resource(dir: 'upload/images', file: bookInstance.image.fileName)}" alt="Imagen"/>
							</g:if>
							<g:else>
								<img class="avatar" src="${resource(dir: 'upload/images', file: 'Grey_Book.png')}" alt="Imagen"/>
							</g:else>	
						</td>					
					
						<td><g:link action="show" id="${bookInstance.id}">${fieldValue(bean: bookInstance, field: "ISBN")}</g:link></td>
					
						<td>${fieldValue(bean: bookInstance, field: "editorial")}</td>
					
						<td>${fieldValue(bean: bookInstance, field: "synopsis")}</td>
					
						<td>${fieldValue(bean: bookInstance, field: "title")}</td>
					
						<td><g:formatDate date="${bookInstance.year}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${bookInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
