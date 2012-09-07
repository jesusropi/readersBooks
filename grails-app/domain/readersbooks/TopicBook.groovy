package readersbooks

class TopicBook {
	
	Topic topic
	Book book

    static constraints = {
    }
	
	static TopicBook link(Topic topic, Book book) {
		TopicBook tp = TopicBook.findByTopicAndBook(topic, book) 
		if (!tp) {
			tp = new TopicBook()
			book.addToTopicBooks(tp) 
			topic.addToTopicBooks(tp) 
			tp.save()
		}
		return tp
	}

	static void unlink(Topic topic, Book book) {
		TopicBook tp = TopicBook.findByTopicAndBook(topic, book) 
		if (tp) {
			book.removeFromTopicBooks(tp) 
			topic.removeFromTopicBooks(tp) 
			tp.delete()
		}
	}
	
}
