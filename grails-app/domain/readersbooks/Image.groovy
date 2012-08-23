package readersbooks

class Image {
	
	String name
	String extension

    static constraints = {
    }
	
	String getFileName(){
		id + "_" + name + "." + extension
	}

}
