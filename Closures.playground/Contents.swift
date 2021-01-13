import Cocoa

//MARK: CREATING BASIC CLOSURE
let driving = {
    print("I'm driving in my car")
}

driving()

//MARK: ACCEPTING PARAMETERS IN A CLOSURE
// Parameters come after the opening bracket, and "in" is used after to show the body of the closure is starting
let driving2 = { (place: String) in
    print("I'm going to \(place) in my car")
}

// Parameter names are not used when calling a closure
driving2("London")


