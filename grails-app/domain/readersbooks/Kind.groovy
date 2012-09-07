package readersbooks

class Kind {
	
	/**
	 * Genero, ejemplos: Novela, poesia, ensayo, critica.
	 */
	
	String kind
	
	static hasMany = [ kindBooks: KindBook ]
	
    static constraints = {
		//king (nullable: false)
    }
}
