<%@ page import="readersbooks.Image" %>


<div class="fieldcontain ${hasErrors(bean: imageInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="image.name.label" default="Name" />
		
	</label>
    <input type="file" name="myFile" />
	<%-- <g:textField name="name" value="${imageInstance?.name}"/>  --%>
</div>

