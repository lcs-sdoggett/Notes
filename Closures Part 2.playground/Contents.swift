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

//MARK: SHORTHAND PARAMETER NAMES

func travel3(action: (String) -> String) {
    print("I'm getting ready to go.")
    let description = action("London")
    print(description)
    print("I arrived!")
}

// This is the same code we have above
travel3 { (place: String) -> String in
    return "I'm going to \(place) in my car"
}

// Swift knows the parameter to that closure must be a string, so we can remove it:
travel3 { place -> String in
    return "I'm going to \(place) in my car"
}

// Swift also knows the closure must return a string, so we can remove that
travel3 { place in
    return "I'm going to \(place) in my car"
}

// Since there is only one line of code, Swift knows that must be the code that is being returned, so that can be removed as well
travel3 { place in
    "I'm going to \(place) in my car"
}

// Rather than writing place in we can let Swift provide automatic names for the closure’s parameters. These are named with a dollar sign, then a number counting from 0.
travel3 {
    "I'm going to \($0) in my car"
}

//MARK: CLOSRUES WITH MULTIPLE PARAMETERS
// Same travel function as before
func travel4(action: (String, Int) -> String) {
    print("I'm getting ready to go.")
    let description = action("London", 60)
    print(description)
    print("I arrived!")
}

// Calling this functions can be written in many ways, including this:
travel4 { place, speed in
    "I'm going to \(place) at \(speed) miles per hour."
}

// And this
travel4 {
    "I'm going to \($0) at \($1) miles per hour."
}

//MARK: RETURNING CLOSURES FROM FUNCTIONS

// The first arrow signifies the functions return type, the second is used to specify your closure’s return value
func travel5() -> (String) -> Void {
    return {
        print("I'm going to \($0)")
    }
}

let result = travel5()
result("London")

// This is allowed but  not recommended! – to call the return value from travel() directly:
let result2 = travel5()("London")

//MARK: CAPTURING VALUES
// If you use any external values inside your closure, Swift captures them – stores them alongside the closure, so they can be modified even if they don’t exist any more.
// Even though that counter variable was created inside travel(), it gets captured by the closure so it will still remain alive for that closure.
func travel6() -> (String) -> Void {
    var counter = 1
    
    return {
        print("\(counter). I'm going to \($0)")
        counter += 1
    }
}

let result3 = travel6()
result3("London")
result3("London")
result3("London")
result3("London")


