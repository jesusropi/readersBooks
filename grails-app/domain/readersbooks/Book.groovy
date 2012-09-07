package readersbooks

class Book {
	
	String title
	String ISBN
	String synopsis
	Date year
	String editorial
	Image  image
	
	static belongsTo = Author
	
	static hashMany = [kindBooks: KindBook
	       		  	,topicBooks: TopicBook
					, writers: Author
					, readBooks: ReadBook] 
			
	static constraints = {
		image nullable: true
    }
		
	String toString(){title}
	
	List<Kind> kinds(){
		this.kindBooks.collect {it.kind}
	}
	
	List<Topic> topics(){
		this.topicBooks.collect {it.topic}
	}
	
	KindBook addToKinds(Kind kind){
		KindBook.link(kind, this)
	}
	
	TopicBook addToTopics(Topic topic){
		TopicBook.link(topic, this)
	}
}
