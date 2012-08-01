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
    }
	
	String toString(){
		userName
	}
}
