package readersbooks

class Book {
	
	String title
	String ISBN
	String synopsis
	Date year
	String editorial
	
	static belongsTo = Writer
	static hashMany = [kindBooks: KindBook
	       		  , topicBooks: TopicBook
                          , writers: Writer
			  , readBooks: ReadBook] 
			
	    static constraints = {
    }
	
	String toString(){title}
}
