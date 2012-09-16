import readersbooks.InitData
import readersbooks.SampleData

class BootStrap {

    def init = { servletContext ->
        InitData.loadCountries()
		SampleData.loadData()		
    }
    def destroy = {
    }
}
