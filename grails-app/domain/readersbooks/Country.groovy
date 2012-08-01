package readersbooks

class Country {
	// Extraer de: doc/GeoPC_Countries.csv
	String name
	String code // ISO 3166-1 alfa-2 (2 letras)

	static hasMany = [ persons: Person ]
	
	static constraints = {
    }
	
	String toString (){
		name
	}
}
