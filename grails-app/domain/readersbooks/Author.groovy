package readersbooks

class Author extends Person{

	static hasMany = [books: Book]
	
    static constraints = {
    }
}
