<%@ page import="readersbooks.Reader" %>



<div class="fieldcontain ${hasErrors(bean: readerInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="reader.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${readerInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: readerInstance, field: 'firstName', 'error')} required">
	<label for="firstName">
		<g:message code="reader.firstName.label" default="First Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="firstName" required="" value="${readerInstance?.firstName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: readerInstance, field: 'birthday', 'error')} ">
	<label for="birthday">
		<g:message code="reader.birthday.label" default="Birthday" />
		
	</label>
	<g:datePicker name="birthday" precision="day"  value="${readerInstance?.birthday}" default="none" noSelection="['': '']" />
</div>

<div class="fieldcontain ${hasErrors(bean: readerInstance, field: 'country', 'error')} ">
	<label for="country">
		<g:message code="reader.country.label" default="Country" />
		
	</label>
	<g:select id="country" name="country.id" from="${readersbooks.Country.list()}" optionKey="id" value="${readerInstance?.country?.id}" class="many-to-one" noSelection="['null': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: readerInstance, field: 'image', 'error')} ">
	<label for="image">
		<g:message code="reader.image.label" default="Image" />
		
	</label>
	<g:select id="image" name="image.id" from="${readersbooks.Image.list()}" optionKey="id" value="${readerInstance?.image?.id}" class="many-to-one" noSelection="['null': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: readerInstance, field: 'userName', 'error')} required">
	<label for="userName">
		<g:message code="reader.userName.label" default="User Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="userName" required="" value="${readerInstance?.userName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: readerInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="reader.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="email" name="email" required="" value="${readerInstance?.email}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: readerInstance, field: 'friends', 'error')} ">
	<label for="friends">
		<g:message code="reader.friends.label" default="Friends" />
		
	</label>
	<g:select name="friends" from="${readersbooks.Reader.list()}" multiple="multiple" optionKey="id" size="5" value="${readerInstance?.friends*.id}" class="many-to-many"/>
</div>

<div class="fieldcontain ${hasErrors(bean: readerInstance, field: 'lastName', 'error')} ">
	<label for="lastName">
		<g:message code="reader.lastName.label" default="Last Name" />
		
	</label>
	<g:textField name="lastName" value="${readerInstance?.lastName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: readerInstance, field: 'readBooks', 'error')} ">
	<label for="readBooks">
		<g:message code="reader.readBooks.label" default="Read Books" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${readerInstance?.readBooks?}" var="r">
    <li><g:link controller="readBook" action="show" id="${r.id}">${r?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="readBook" action="create" params="['reader.id': readerInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'readBook.label', default: 'ReadBook')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: readerInstance, field: 'sex', 'error')} required">
	<label for="sex">
		<g:message code="reader.sex.label" default="Sex" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="sex" from="${readersbooks.Sex?.values()}" keys="${readersbooks.Sex.values()*.name()}" required="" value="${readerInstance?.sex?.name()}"/>
</div>

