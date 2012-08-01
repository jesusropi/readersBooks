package readersbooks

class Award {
	/**
	 * Examples: National Book Award, Cervantes, Nobel, Herralde.
	 * 				
	 */
	
	static hasMany = [book: Book]
	
	static mapping = {
		hasMany joinTable: [name: 'award_year_books',
							key: ['award_id','book_id'],
							column: 'date',
							type: 'Date']
	 }
	
	String award
	
    static constraints = {
		award (nullable:false)
    }
}
