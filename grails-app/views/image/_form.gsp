<%@ page import="readersbooks.Image" %>


<div class="fieldcontain ${hasErrors(bean: imageInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="image.name.label" default="Name" />
		
	</label>
    <input type="file" name="myFile" />
    <input type="hidden" name="readerId" value="${readerId}" />
    <input type="hidden" name="authorId" value="${authorId}" />
    <input type="hidden" name="bookId" value="${bookId}" />
</div>

