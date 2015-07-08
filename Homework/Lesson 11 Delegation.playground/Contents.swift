//Country.swift//
protocol CountryDelegate {
    func negotiate()
    func startWar()
    
}


class Country{
    var delegate: CountryDelegate?
    func performNegotioation() {
        
        if let delegate = delegate {
        delegate.negotiate()
        }
        
    }
    
}
/******************************/
/*******Ambassador.swift***************/

//Spokesperson takes orders from Country, so Spokesperson is the Delegate
class Ambassador: CountryDelegate {
    func negotiate() {
        println("I shall negotiate!")
        
    }
    func startWar(){
        
    }
    
}

/*****************************************/

/*******Lieu.swift***************/

//Spokesperson takes orders from Country, so Spokesperson is the Delegate
class Lieu: Ambassador {
    
        
    }
    


/*************************************/

let usa = Country()
let roy = Ambassador()
//usa.delegate = roy


let roy = Lieu()
usa.delegate = roy

usa.performNegotioation()
