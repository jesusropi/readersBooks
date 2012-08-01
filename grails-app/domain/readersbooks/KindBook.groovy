package readersbooks

class KindBook {
	
	Book book
	Kind kind
	
	static hasMany = [kindBooks: KindBook]

    static constraints = {
    }
}
