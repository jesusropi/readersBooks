package readersbooks

class Reader extends Person{

	String userName
	String email

	// Friends
	static hasMany = [
						readBooks: ReadBook
						,followers: Follow
						,leaders: Follow
					 ]

							
	static mappedBy = [
						followers: "leader"
						,leaders: "follower" 
						]
	
    static constraints = {
		userName blank: false 
		email email: true, blank: false, unique: true
    }
	
	String toString(){
		userName
	}
	
	/* MISTMATCH */
	List<Book> books(){
		this.readBooks.collect { it.book } 
	}
	List<Reader> followers(){
		this.followers.collect { it.follower }
	}
	
	List<Reader> leaders(){
		this.leaders.collect {it.leader }
	} 
	
	ReadBook addToBooks(Book book){
		ReadBook.link(this, book)
	}
	
	Follow addToFollowers(Reader reader){
		Follow.link(this, reader)
	}

}
