package readersbooks



import grails.test.mixin.*
import org.junit.*

/**
 * See the API for {@link grails.test.mixin.domain.DomainClassUnitTestMixin} for usage instructions
 */
@TestFor(Reader)
class ReaderTests {

    void testConstrains() {
	   Reader reader;
		
	   mockForConstraintsTests(Reader, [getExistingReader()])

	   reader = new Reader();
	   assert !reader.validate();
	   assert "nullable" == reader.errors["userName"];
	   assert "nullable" == reader.errors["email"];

	   reader = getMyReader();
	   reader.email = "my-fucking@email.com"
	   assert !reader.validate()
	   assert "unique" == reader.errors["email"]

	   reader.email = ""	
	   assert !reader.validate()
	   assert "blank" == reader.errors["email"]

	   	reader.email = "my_email_viv.com"	
	 	assert !reader.validate()
		assert "email" == reader.errors["email"]
	   	
		reader.email = "my_email@viv.com"	
		assert reader.validate()
    }
	
	
	private Reader getExistingReader(){ 
		new Reader (
		   userName:   		"paco"
		   , email: 	 	"my-fucking@email.com"
		   , name:  		"Nome"
		   , sex: Sex.FEMALE
		   , firstName: 	"NomeUn"
		   , lastName: 		"NomeDous"
		   , birthday: 		null
		   );
	}

	
	private Reader getMyReader(){
		new Reader(
		   userName:   		"p"
		   , email: 	 	"email@email.com"
		   , name:  		"Name"
		   , firstName: 	"Name 1"
		   , lastName: 		"Name 2"
		   , sex: 			Sex.FEMALE
		   , birthday: 		null
		   );		
	}
}
