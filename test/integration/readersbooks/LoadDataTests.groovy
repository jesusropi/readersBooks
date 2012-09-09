package readersbooks

import static org.junit.Assert.*
import org.junit.*

class LoadDataTests {

    @Before
    void setUp() {
        println "before"// Setup logic here
		InitData.loadCountries()
        SampleData.loadData()
    }

    @After
    void tearDown() {
       	println "after" //Tear down logic here
    }

    @Test
    void testCountEntitiesSampleData() {
		assertEquals Book.count(), 8
		assertEquals Author.count(), 7
		assertEquals Reader.count(), 3
		assertEquals Topic.count(), 5
		assertEquals Kind.count(), 3
		
			
    }
	
    @Test
    void testBookRelationSampleData() {
        Book mo = Book.findByTitle "Moby Dick"
		assertNotNull mo
		assertEquals mo.author.firstName, "Melville"
		
		assert mo.kinds().contains(Kind.findByKind("Novela"))
		assertFalse mo.kinds().contains(Kind.findByKind("Poesía"))
		assertFalse  mo.kinds().contains(Kind.findByKind("Ensayo"))		 
		
		assert mo.topics().contains(Topic.findByTopic("Épico"))
		assertFalse mo.topics().contains(Topic.findByTopic("Vida"))
		assertFalse  mo.topics().contains(Topic.findByTopic("Policial"))		 
    }
	
	void testReaderRelationSampleDate(){
		Reader je = Reader.findByUserName "jesus"
		Reader ma = Reader.findByUserName "María"
		Reader da = Reader.findByUserName "dani"
		assertNotNull je
		assertNotNull ma
		assertNotNull da
		assertEquals je.sex, Sex.MALE
		assertEquals ma.country.code, "ES"
		assert je.followers().containsAll([da, ma])
		assert ma.followers().contains(da)
		assert !da.followers().contains(ma)
		assert da.leaders().contains(ma)
		
		 
	}
	
}
