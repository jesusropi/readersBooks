package readersbooks

class Country {
	// doc/GeoPC_Countries.csv
	String name
	String code // ISO 3166-1 alfa-2 (2 letras)

	static hasMany = [ persons: Person ]
	
	static constraints = {
		name length: 1..32, blank: false, unique: true 
		code length: 2, blank: false, unique: true
    }
	
	String toString (){
           name
	}
}
