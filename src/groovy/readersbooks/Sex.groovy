package readersbooks
/** ISO/IEC 5218
	The four codes specified in ISO/IEC 5218 are:
	0 = not known,
	1 = male,
	2 = female,
	9 = not applicable.
*/
public enum Sex {
	NOT_KNOW("No se sabe"),
	MALE("Hombre"),
	FEMALE("Mujer"),
	NOT_APPLICABLE("No aplicable") // For a robot
	
	final String value
	
	Sex(String value) {
		this.value = value
	}
	
	String toString() {
		value
	}
	
}
