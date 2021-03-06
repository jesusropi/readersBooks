package readersbooks

import org.springframework.dao.DataIntegrityViolationException
import org.springframework.web.multipart.MultipartFile

class ImageController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [imageInstanceList: Image.list(params), imageInstanceTotal: Image.count()]
    }

    def create() {
        [imageInstance: new Image(params)
			, readerId: params.readerId
			, authorId: params.authorId
			, bookId: params.bookId 
		]
    }

    def save() {
        def imageInstance = new Image(params)

		// path
		def storagePath = servletContext.getRealPath( "upload/images" )
		def storagePathDirectory = new File(storagePath)
		if (!storagePathDirectory.exists()) {
			storagePathDirectory.mkdirs()
		}
		
		imageInstance.name = ""
		imageInstance.extension = ""
		
		if (!imageInstance.save(flush: true)) {
            render(view: "create", model: [imageInstance: imageInstance
					, readerId: params.readerId
					, authorId: params.authorId
					, bookId: params.bookId 
				])
            return
        }
		
		MultipartFile f = request.getFile('myFile')
		if (f.empty) {
			render(view: 'create', model: [imageInstance: imageInstance])
			return
		}
		def fileName = f.getOriginalFilename().split("\\.")
		if (fileName.length > 1) {
			imageInstance.name = fileName[ -2 ]
			imageInstance.extension = fileName[ -1 ]
		}
		String name = imageInstance.fileName
		
		f.transferTo(new File(storagePath + "/" + name))
		// Save the property of the image
		if (params.readerId) {
			def reader = Reader.get(params.long('readerId'))
			log.error(params.long('readerId'))
			assert reader
			assert imageInstance
			reader.image = imageInstance
			reader.save()
		}else if (params.authorId){
			def author = Author.get(params.long('authorId'))
			author.image = imageInstance
			author.save() 	
		}else if (params.bookId){
			def book = Book.get(params.long('bookId'))
			book.image = imageInstance
			book.save()	
		}	
		//
		
				
		flash.message = message(code: 'default.created.message', args: [message(code: 'image.label', default: 'Image'), imageInstance.id])
        redirect(action: "show", id: imageInstance.id)
    }

    def show() {
        def imageInstance = Image.get(params.id)
        if (!imageInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'image.label', default: 'Image'), params.id])
            redirect(action: "list")
            return
        }

        [imageInstance: imageInstance]
    }

    def edit() {
        def imageInstance = Image.get(params.id)
        if (!imageInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'image.label', default: 'Image'), params.id])
            redirect(action: "list")
            return
        }

        [imageInstance: imageInstance]
    }

    def update() {
        def imageInstance = Image.get(params.id)
        if (!imageInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'image.label', default: 'Image'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (imageInstance.version > version) {
                imageInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'image.label', default: 'Image')] as Object[],
                          "Another user has updated this Image while you were editing")
                render(view: "edit", model: [imageInstance: imageInstance])
                return
            }
        }

        imageInstance.properties = params

        if (!imageInstance.save(flush: true)) {
            render(view: "edit", model: [imageInstance: imageInstance])
            return
        }

		flash.message = message(code: 'default.updated.message', args: [message(code: 'image.label', default: 'Image'), imageInstance.id])
        redirect(action: "show", id: imageInstance.id)
    }

    def delete() {
        def imageInstance = Image.get(params.id)
        if (!imageInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'image.label', default: 'Image'), params.id])
            redirect(action: "list")
            return
        }

        try {
            imageInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'image.label', default: 'Image'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'image.label', default: 'Image'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}
