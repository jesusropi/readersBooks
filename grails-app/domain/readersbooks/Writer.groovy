package readersbooks

class Writer extends Person{
	
	static hasMany = [books: Book]
	
    static constraints = {
    }
}
