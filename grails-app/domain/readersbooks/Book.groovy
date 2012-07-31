package readersbooks

class Book {
	
	String title
	String ISBN
	String sinopsis

	static belongsTo = Writer
	static hasMany = [writers: Writer, readBooks: ReadBook] 
			
    static constraints = {
    }
}
