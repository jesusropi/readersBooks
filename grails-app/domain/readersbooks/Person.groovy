package readersbooks

import java.util.Date;

abstract class Person {
	
	String name
	String firstName
	String lastName
	Date   birthday
	Sex sex 
	Country country
	Image 	image
				 // TODO: to object
				 // http://grails.org/plugin/file-uploader
				 // http://grails.org/plugin/jquery-file-upload
				 // http://grails.org/Simple+Avatar+Uploader
	
    static constraints = {
			name blank: false
			firstName blank: false 
			birthday nullable: true
			country nullable: true
    }
}
