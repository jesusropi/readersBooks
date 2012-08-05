package readersbooks

class Book {
	
	String title
	String ISBN
	String synopsis
	Date year
	String editorial

	static belongsTo = Author
	static hashMany = [kindBooks: KindBook
	       		  , topicBooks: TopicBook
                          , writers: Author
			  , readBooks: ReadBook] 
			
	    static constraints = {
    }
		
	String toString(){title}
}
