import readersbooks.InitData

class BootStrap {

    def init = { servletContext ->
        InitData.loadCountries()
    }
    def destroy = {
    }
}
