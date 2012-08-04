package readersbooks

class Reader extends Person{
	
	String userName
	String email

	// Friends
	static hasMany = [
						readBooks: ReadBook
						,friends: Reader 
					 ]
						
	
    static constraints = {
		userName blank: false 
		email email: true, blank: false, unique: true
    }
	
	String toString(){
		userName
	}
}
