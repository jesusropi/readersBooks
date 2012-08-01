package readersbooks

class Topic {
	/**
	 * Temas, ejemplos: Terror, policial, divulgacion, informatica, programacion, literatura.
	 */
	String topic

	static hasMany = [topicBooks: TopicBook]
	
    static constraints = {
    }
	
	String toString(){topic}
}
