package readersbooks

class ReadBook {
	
	String  comment
	Integer score // estrellas que puntuan
	
	Reader reader
	Book book
	
    static constraints = {
    }
	
	String toString(){
		reader.userName + " - " + book.title
	}
}