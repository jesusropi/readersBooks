SpringSource Tool Suite 
-----------------------
Version: 2.9.2.RELEASE 
Build Id: 201205071000

STS (Extensions): (Help-->Dashboard-->Extensions)

Grails

Grails Support

Groovy-Eclipse

SpringSource Tool Suite ya tiene el Git instalado por defecto.

Para tener el proyecto instalado y configurado en eclipse:
---------------------------------------------------------
Para instalar el proyecto en el repositorio:

1. Abrir una cuenta en github y creamos un respositorio. 

2. Creamos la aplicaci—n en el directorio del git:
grails createapp nombre

3.git init 
Desde dentro del proyecto reciŽn creado. 

4. git add.
Esto a–ade el ’ndice del repositorio.

Nota: en el fichero .gitignore se recogen los ficheros que no queremos
a–adir al repositorio.

5. git commit

6. git push -f url

7. Ejecutar:

8. Desde el eclipse, si no est‡ creado desde cero el proyecto:

2.1.  eclipse: File --> Import --> General 
	--> Import Projects --> Existing Projects into Workspace
   Rellenar: root_directory = ~/git
   Seleccionar bannedBooks

2.2. right click over project bannedBooks and:
 Properties --> Grails --> Enable project specific settings"

2.3. eclipse: Project --> Properties --> Grails and check 
	"Enable project specific settings"
