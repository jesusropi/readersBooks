<%@ page import="readersbooks.Author" %>



<div class="fieldcontain ${hasErrors(bean: authorInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="author.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${authorInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: authorInstance, field: 'firstName', 'error')} required">
	<label for="firstName">
		<g:message code="author.firstName.label" default="First Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="firstName" required="" value="${authorInstance?.firstName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: authorInstance, field: 'birthday', 'error')} ">
	<label for="birthday">
		<g:message code="author.birthday.label" default="Birthday" />
		
	</label>
	<g:datePicker name="birthday" precision="day"  value="${authorInstance?.birthday}" default="none" noSelection="['': '']" />
</div>

<div class="fieldcontain ${hasErrors(bean: authorInstance, field: 'country', 'error')} ">
	<label for="country">
		<g:message code="author.country.label" default="Country" />
		
	</label>
	<g:select id="country" name="country.id" from="${readersbooks.Country.list()}" optionKey="id" value="${authorInstance?.country?.id}" class="many-to-one" noSelection="['null': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: authorInstance, field: 'image', 'error')} ">
	<label for="image">
		<g:message code="author.image.label" default="Image" />
		
	</label>
	<g:select id="image" name="image.id" from="${readersbooks.Image.list()}" optionKey="id" value="${authorInstance?.image?.id}" class="many-to-one" noSelection="['null': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: authorInstance, field: 'books', 'error')} ">
	<label for="books">
		<g:message code="author.books.label" default="Books" />
		
	</label>
	<g:select name="books" from="${readersbooks.Book.list()}" multiple="multiple" optionKey="id" size="5" value="${authorInstance?.books*.id}" class="many-to-many"/>
</div>

<div class="fieldcontain ${hasErrors(bean: authorInstance, field: 'lastName', 'error')} ">
	<label for="lastName">
		<g:message code="author.lastName.label" default="Last Name" />
		
	</label>
	<g:textField name="lastName" value="${authorInstance?.lastName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: authorInstance, field: 'sex', 'error')} required">
	<label for="sex">
		<g:message code="author.sex.label" default="Sex" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="sex" from="${readersbooks.Sex?.values()}" keys="${readersbooks.Sex.values()*.name()}" required="" value="${authorInstance?.sex?.name()}"/>
</div>

