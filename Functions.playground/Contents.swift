import Cocoa

//MARK: WRITING FUNCTIONS
func printHelp() {

    let message = """
Welcome to MyApp!

Run this app inside a directory of images and
MyApp will resize them all into thumbnails
"""
    print(message)
}

printHelp()

//MARK: ACCEPTING PARAMETERS
print("Hello, World!")

// Parameter name is number
func square(number: Int) {
    print(number * number)
}

square(number: 8)

//MARK: RETURING VALUES
// This funciton is returning an Int
func square2(number: Int) -> Int {
    return number * number
}

let result = square2(number: 8)
print(result)

//MARK: PARAMETER LABELS
// The internal parameter name is "name", the external name is "to"
func sayHello(to name: String) {
    print("Hello, \(name)!")
}

sayHello(to: "Taylor")

//MARK: OMITTING PARAMETER LABELS
// The underscore means no parameter name must be used when invoking the function
func greet(_ person: String) {
    print("Hello, \(person)!")
}

greet("Taylor")

//MARK: DEFAULT PARAMETERS
// Bool is set to true, you can give parameters a default value by setting it = to the desried value
func greet(_ person: String, nicely: Bool = true) {
    if nicely == true {
        print("Hello, \(person)!")
    } else {
        print("Oh no, it's \(person) again...")
    }
}

greet("Taylor")
greet("Taylor", nicely: false)

//MARK: VARIADIC FUNCTIONS
// Variadic functions are functions that can accept any number of parameters of the same type
print("Haters", "gonna", "hate")

// To make a functions variadic, put ... after the parameter type
func square(numbers: Int...) {
    for number in numbers {
        print("\(number) squared is \(number * number)")
    }
}

// When calling the function, put commas bettween values
square(numbers: 1, 2, 3, 4, 5)

//MARK: WRITING THROWING FUNCTIONS
// Set enum name to type Error
enum PasswordError: Error {
    case obvious
}

// Mark the fuction as throws before the return type to make it a throwing function
// Use the throw keyword when something goes wrong
func checkPassword(_ password: String) throws -> Bool {
    if password == "password" {
        throw PasswordError.obvious
    }

    return true
}

//MARK: RUNNING THROWING FUNCTIONS
// To check a parameter for errors, use "do", "try" and "check"
do {
    try checkPassword("password")
    print("That password is good!")
} catch {
    print("You can't use that password.")
}

//MARK: INOUT PARAMETERS
// An "inout" parameter can be changed inside and outside the function
func doubleInPlace(number: inout Int) {
    number *= 2
}

var myNum = 10
doubleInPlace(number: &myNum)


