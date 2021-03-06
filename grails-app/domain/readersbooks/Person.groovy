package readersbooks

import java.util.Date;

abstract class Person {
	
	String name
	String firstName
	String lastName
	Date   birthday
	Sex 	sex 
	Country country
	Image 	image
	
    static constraints = {
			name blank: false
			firstName blank: false
			lastName nullable: true 
			birthday nullable: true
			country nullable: true
			image nullable: true
    }
	
	String toString(){
		name + " " + firstName
	}
}
