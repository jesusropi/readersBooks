package readersbooks

class ReadBook {
	
	String  comment
	Integer score // estrellas que puntuan
	
	Reader reader
	Book book
	
    static constraints = {
    }
	
	String toString(){
		reader?.userName + " - " + book?.title
	}
	
	static ReadBook link(Reader reader, Book book) {
		ReadBook rb = ReadBook.findByReaderAndBook(reader, book) 
		if (!rb) {
			rb = new ReadBook()
			reader.addToReadBooks(rb) 
			book.addToReadBooks(rb)
			rb.save()
		}
		return rb
	}

	static void unlink(Reader reader, Book book) {
		ReadBook rb = ReadBook.findByReaderAndBook(reader, book)
		if (rb) {
			reader.removeFromReadBooks(rb)
			book.removeFromReadBooks(rb)
			rb.delete()
		}
	}


}