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


//MARK: RETURNING VALUES FROM A CLOSURE
// The return type goes after the parameters and before the "in"
let drivingWithReturn = { (place: String) -> String in
    return "I'm going to \(place) in my car"
}

// Set a constant equal to whatever the closure returns
let message = drivingWithReturn("London")
print(message)


//MARK: CLOSURES AS PARAMETERS
// "action: () -> Void" is a way of saying that when you call the function, what ever you set action equal to will occur when "action()" is written in the function
func travel(action: () -> Void) {
    print("I'm getting ready to go.")
    action()
    print("I arrived!")
}

travel(action: driving)


//MARK: TRAILING CLOSURE SYNTAX
// There are other ways we can call our travel function. Since action is the last parameter, we can use trailing closure syntax.

travel() {
    print("I'm driving in my car")
}

// Since action is the only parameter, the brackets are not necessary
travel {
    print("I'm driving in my car")
}
