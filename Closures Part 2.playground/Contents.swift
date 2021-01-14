import Cocoa

//MARK: USING CLOSURE AS PARAMETERS WHEN THEY ACCEPT PARAMETERS

// "London" is the parameter being passed to the action
func travel(action: (String) -> Void) {
    print("I'm getting ready to go.")
    action("London")
    print("I arrived!")
}

// "place" will be set to the string ("London") thats being passed into the closure
travel { (place: String) in
    print("I'm going to \(place) in my car")
}

//MARK: USING CLOSURES AS PARAMETERS WHEN THEY RETURN VALUES

func travel2(action: (String) -> String) {
    print("I'm getting ready to go.")
    let description = action("London")
    print(description)
    print("I arrived!")
}

travel2 { (place: String) -> String in
    return "I'm going to \(place) in my car"
}
