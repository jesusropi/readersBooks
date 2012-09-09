package readersbooks

class SampleData {
	
	static public loadData(){
		
		Book ro = new Book(
				   title: "Rob Roy"
				   ,isbn: "9781853262531"
				   //,synopsis: "Rob Roy MacGregor was a disputed figure. Robin Hood to some and predator to others."
			 )
		Book mo = new Book(
				   title: "Moby Dick"
				   ,isbn: "9781853262532"
				   ,synopsis: "The story of Captain Ahab's quest to avenge the whale that 'reaped' his leg."
				   ,editorial: "Wordsworth"
				   ,year:Date.parse("yyyy-MM-dd", "18051-01-01")
					/*,image: */
			   )
		Book pa = new Book(
				   title: "Palabra sobre palabra"
				   ,isbn: "9781853262533"
				   ,synopsis: "Obra completa"
				   ,editorial: "Seix Barral"
				   ,year:Date.parse("yyyy-MM-dd", "2010-01-01")
					/*,image: */
			   )
		Book bo = new Book(
				   title: "Botchan"
				   ,isbn: "9781853262534"
				   ,synopsis: "Las aventuras de Botchan, un joven cínico."
				   ,editorial: "Impedimenta"
				   ,year:Date.parse("yyyy-MM-dd", "2008-01-01")
					/*,image: */
			   )
		Book di = new Book(
				   title: "Diario de invierno"
				   ,isbn: "9781853262535"
				   ,synopsis: "Parte de las primeras señales de la vejez para contar parte de su vida."
				   ,editorial: "Anagrama"
				   ,year:Date.parse("yyyy-MM-dd", "2012-01-01")
					/*,image: */
			   )
		Book ho = new Book(
				   title: "Hojas de hierba"
				   ,isbn: "9781853262536"
				   ,synopsis: "Poesía clasica americana."
				   ,editorial: "Visor Libros"
				   ,year:Date.parse("yyyy-MM-dd", "2009-01-01")
					/*,image: */
			   )
		Book au = new Book(
				   title: "Aullido"
				   ,isbn: "9781853262537"
				   ,synopsis: "Poemas que produjeron gran conmoción."
				   ,editorial: "Anagrama"
				   ,year:Date.parse("yyyy-MM-dd", "2000-01-01")
					/*,image: */
			
			   )			 			 			 			 
		Book le = new Book(
			title: "Leviathan"
			,isbn: "9781853262512"
			,synopsis: "Vida y crimenes de un hombre que decide pasar a la acción."
			,editorial: "Viking Adult"
			,year:Date.parse("yyyy-MM-dd", "1992-01-01")
			 /*,image: */
		)
 
 
		mySave([ ro, mo, pa, bo, di, ho, au, le])
		
		Author wa = new Author(
			name: "Walter"
			,firstName: "Scott"
			,lastName: null
			,birthday: Date.parse("yyyy-MM-dd", "1771-05-31")
			,sex: Sex.MALE
			,country: Country.findByCode("GB")
			/*,image:*/	
			)
		Author he = new Author(
			name: "Herman"
			,firstName: "Melville"
			,lastName: null
			,birthday: Date.parse("yyyy-MM-dd", "1810-05-31")
			,sex: Sex.MALE
			,country: Country.findByCode("GB")
			/*,image:*/	
			)
		Author an = new Author(
			name: "Ángel"
			,firstName: "González"
			,lastName: null
			,birthday: Date.parse("yyyy-MM-dd", "1925-05-31")
			,sex: Sex.MALE
			,country: Country.findByCode("US")
			/*,image:*/	
			)
		Author na = new Author(
			name: "Natsume"
			,firstName: "Soseki"
			,lastName: null
			,birthday: Date.parse("yyyy-MM-dd", "1867-05-31")
			,sex: Sex.MALE
			,country: Country.findByCode("JP")
			/*,image:*/	
			)
		Author pau = new Author(
			name: "Paul"
			,firstName: "Auster"
			,lastName: null
			,birthday: Date.parse("yyyy-MM-dd", "194-05-31")
			,sex: Sex.MALE
			,country: Country.findByCode("US")
			/*,image:*/	
			)
		Author wal = new Author(
			name: "Walt"
			,firstName: "Whitman"
			,lastName: null
			,birthday: Date.parse("yyyy-MM-dd", "1819-05-31")
			,sex: Sex.MALE
			,country: Country.findByCode("US")
			/*,image:*/	
			)
		Author al = new Author(
			name: "Allen"
			,firstName: "Gisberg"
			,lastName: null
			,birthday: Date.parse("yyyy-MM-dd", "1926-05-31")
			,sex: Sex.MALE
			,country: Country.findByCode("US")
			/*,image:*/	
			)
		mySave([wa, he, an, na, pau, wal, al])
		
		wa.addToBooks(ro)
		he.addToBooks(mo)
		an.addToBooks(pa)
		na.addToBooks(bo)
		pau.addToBooks(di)
		pau.addToBooks(le)
		wal.addToBooks(ho)
		al.addToBooks(au)
		
		mySave([wa, he, an, na, pau, wal, al])
		
		Kind no = new Kind(kind:"Novela")
		Kind po = new Kind(kind:"Poesía")
		Kind en = new Kind(kind:"Ensayo")
		
		mySave([no, po, en])

		ro.addToKinds(no)
		mo.addToKinds(no)
		pa.addToKinds(po)
		bo.addToKinds(no)
		di.addToKinds(en)
		le.addToKinds(no)
		ho.addToKinds(po)
		au.addToKinds(po)

		
		Topic ep = new Topic(topic:"Épico")
		Topic li = new Topic(topic:"Literatura")
		Topic vi = new Topic(topic:"Juventud")
		Topic ju = new Topic(topic:"Vida")
		Topic pol = new Topic(topic:"Policial")
		
		mySave([ ep, li, vi, ju, pol])
		
		ro.addToTopics(ep)
		mo.addToTopics(ep)
		pa.addToTopics(vi)
		bo.addToTopics(ju)
		di.addToTopics(li)
		le.addToTopics(pol)
		ho.addToTopics(vi)
		au.addToTopics(ju)
		
		mySave([ ro, mo, pa, bo, di, ho, au, le])
		
		Reader je = new Reader(
			userName: "jesus"
			,email: "jesus.gonzalez@hotmail.com"
			,name: "Jesús"
			,firstName: "González"
			,lastName: "Rodríguez"
			,birthday: Date.parse("yyyy-MM-dd", "1985-05-31")
			,sex: Sex.MALE
			,country: Country.findByCode("ES")
			/*,image:*/	
			)

		Reader ma = new Reader(
			userName: "María"
			,email: "maria.gomez@gmail.com"
			,name: "María"
			,firstName: "Gómez"
			,lastName: "Fernández"
			,birthday: Date.parse("yyyy-MM-dd", "1988-07-15")
			,sex: Sex.FEMALE
			,country: Country.findByCode("ES")
			/*,image:*/	
			)
		
		Reader da = new Reader(
			userName: "dani"
			,email: "daniel.lopez@gmail.com"
			,name: "Daniel"
			,firstName: "López"
			,lastName: "Díaz"
			,birthday: Date.parse("yyyy-MM-dd", "1979-03-04")
			,sex: Sex.NOT_KNOW
			,country: Country.findByCode("ES")
			/*,image:*/	
			)
		
		mySave([je, ma, da])
		
		
		je.addToFollowers(da)
		je.addToFollowers(ma)
		ma.addToFollowers(da)
		
		ReadBook rb = null;
		
		[ 
		  [ro,"El Robin Hood Escocés.",7]
		, [mo,"Un pez grande.",6]
		, [pa,"Pretencioso",3]
		, [bo, "El tonto del pueblo en primera persona.", 4]
		, [di, "En invierno se le heló la cabeza a Auser", 2]
		, [au, "Un libro que cambió mi vida", 10]
		, [le, "Oda a lo superfluo", 2]
		].each {
			println it[0].title
			rb = je.addToBooks(it[0])
			rb.comment = it[1]
			rb.score = it[2]
			rb.save()
		}
		
		[ 
		  [ro,"El Robin Hood Escocés.",7]
		, [mo,"Un pez grande.",6]
		, [bo, "El tonto del pueblo en primera persona.", 4]
		, [di, "En invierno se le heló la cabeza a Auser", 2]
		, [le, "Oda a lo superfluo", 2]
		].each {
			rb = ma.addToBooks(it[0])
			rb.comment = it[1]
			rb.score = it[2]
			rb.save()
		}
		
		[ 
		  [ro,"El Robin Hood Escocés.",7]
		, [pa,"Pretencioso",3]
		, [bo, "El tonto del pueblo en primera persona.", 4]
		, [di, "En invierno se le heló la cabeza a Auser", 2]
		, [le, "Oda a lo superfluo", 2]
		].each {
			rb = da.addToBooks(it[0])
			rb.comment = it[1]
			rb.score = it[2]
			rb.save()
		}

				
		mySave([je, ma, da])
		
		
	}
	
	
	
	static void mySave(List domainEntities){
		domainEntities.each{ de ->
			if (!de.save()) {
				log.error("---------------" + de.toString() + "------------------")
				de.errors.allErrors.each { log.error(it.field + "::" + it.getCode()) }
			}
		}
	}
	
/*
    public class log {  
    	static void error(String message) {
        	println message
        }       
    }
*/
	
	
}
