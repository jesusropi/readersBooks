package readersbooks

class Country {
	// doc/GeoPC_Countries.csv
	String name
	String code // ISO 3166-1 alfa-2 (2 letras)

	static hasMany = [ persons: Person ]
	
	static constraints = {
    }
	
	String toString (){
		name size: 1..32, blank: false, unique: true 
		code size: 2, blank: false, unique: true
	}
}
