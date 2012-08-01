package readersbooks

class Book {
	
	String title 
	String ISBN
	String synopsis
	Date year
	String editorial
	
	
	static hashMany = [kindBooks: KindBook, topicBooks: TopicBook]
	
    static constraints = {
    }
	
	String toString(){title}
}
