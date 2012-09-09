package readersbooks

class KindBook {
	
	Kind kind
	Book book
	
	static hasMany = [kindBooks: KindBook]

    static constraints = {
    }
	static KindBook link(Kind kind, Book book) {
		KindBook kb = KindBook.findByKindAndBook(kind, book) 
		if (!kb) {
			kb = new KindBook()
			book.addToKindBooks(kb) 
			kind.addToKindBooks(kb)
			//kb.kind = kind
			//kb.book = book 
			kb.save()
		}
		return kb
	}

	static void unlink(Kind kind, Book book) {
		KindBook kb = KindBook.findByKindeAndBook(kind, book) 
		if (kb) {
			book.removeFromKindBooks(kb) 
			kind.removeFromKindBooks(kb) 
			kb.delete()
		}
	}
	
}
