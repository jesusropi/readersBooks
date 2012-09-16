package readersbooks

import javax.servlet.ServletContext
import org.codehaus.groovy.grails.web.context.ServletContextHolder

class ImageService {

    def save(File file, def domainWithImage) {
		Image imageInstance = saveFile(file)
		assert domainWithImage
		assert imageInstance
		domainWithImage.image = imageInstance
		domainWithImage.save()
    }

	private saveFile(File file){
        def imageInstance = new Image()
		// path
		ServletContext sc = ServletContextHolder.servletContext 
		def storagePath = sc.getRealPath( "upload/images" )
		def storagePathDirectory = new File(storagePath)
		if (!storagePathDirectory.exists()) {
			storagePathDirectory.mkdirs()
		}
		
		imageInstance.name = ""
		imageInstance.extension = ""
		
		if (!imageInstance.save()) {
			throw new IOException("No saved", image)
        }
		
		def fileName = file.name.split("\\.")
		if (fileName.length > 1) {
			imageInstance.name = fileName[ -2 ]
			imageInstance.extension = fileName[ -1 ]
		}
		String name = imageInstance.fileName
		
		//f.transferTo(new File(storagePath + "/" + name))
		new AntBuilder().copy( file: file.absolutePath, tofile: storagePath + "/" + name )
		imageInstance
	}	
}
