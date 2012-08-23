<%@ page import="readersbooks.Book" %>



<div class="fieldcontain ${hasErrors(bean: bookInstance, field: 'ISBN', 'error')} ">
	<label for="ISBN">
		<g:message code="book.ISBN.label" default="ISBN" />
		
	</label>
	<g:textField name="ISBN" value="${bookInstance?.ISBN}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: bookInstance, field: 'editorial', 'error')} ">
	<label for="editorial">
		<g:message code="book.editorial.label" default="Editorial" />
		
	</label>
	<g:textField name="editorial" value="${bookInstance?.editorial}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: bookInstance, field: 'synopsis', 'error')} ">
	<label for="synopsis">
		<g:message code="book.synopsis.label" default="Synopsis" />
		
	</label>
	<g:textField name="synopsis" value="${bookInstance?.synopsis}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: bookInstance, field: 'title', 'error')} ">
	<label for="title">
		<g:message code="book.title.label" default="Title" />
		
	</label>
	<g:textField name="title" value="${bookInstance?.title}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: bookInstance, field: 'year', 'error')} required">
	<label for="year">
		<g:message code="book.year.label" default="Year" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="year" precision="day"  value="${bookInstance?.year}"  />
</div>

