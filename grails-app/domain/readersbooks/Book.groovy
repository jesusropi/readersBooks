package readersbooks

class Book {
	
	String title
	String isbn
	String synopsis
	Date year
	String editorial
	Image  image
	Author author
	
	//static belongsTo = Author
	
	static hasMany = [kindBooks: KindBook
	       		  	,topicBooks: TopicBook
					, readBooks: ReadBook] 
			
	static constraints = {
		isbn unique: true
		synopsis nullable: true
		year nullable: true
		editorial nullable: true
		image nullable: true
		author nullable: true
    }
		
	String toString(){title}
	
	List<Kind> kinds(){
		kindBooks.collect {it.kind}
	}
	
	List<Topic> topics(){
		topicBooks.collect {it.topic}
	}
	
	KindBook addToKinds(Kind kind){
		KindBook.link(kind, this)
	}
	
	TopicBook addToTopics(Topic topic){
		TopicBook.link(topic, this)
	}
}
