import Cocoa


//MARK: CREATING YOUR OWN STRUCTS

// Struct name is Sport. Values in sctucts are called properties. The property name is a variable and a string
struct Sport {
    var name: String
}

// Set tennis to an instance of Sport with the property name set to "Tennis"
var tennis = Sport(name: "Tennis")
print(tennis.name)

// tennis and sport are variables and can be manipulated
tennis.name = "Lawn tennis"

//MARK: COMPUTED PROPERTIES

struct Sport2 {
    var name: String
    var isOlympicSport: Bool

    // olympicStatus will return a different value based on the other properties in the struct
    var olympicStatus: String {
        if isOlympicSport {
            return "\(name) is an Olympic sport"
        } else {
            return "\(name) is not an Olympic sport"
        }
    }
}

let chessBoxing = Sport2(name: "Chessboxing", isOlympicSport: false)
print(chessBoxing.olympicStatus)

//MARK: PROPERTY OBSERVERS

// Because of "didSet", whatever comes after the curly bracket will run every time amount is changed
// "willSet" will run code before the change occurs
struct Progress {
    var task: String
    var amount: Int {
        didSet {
            print("\(task) is now \(amount)% complete")
        }
    }
}

var progress = Progress(task: "Loading data", amount: 0)
progress.amount = 30
progress.amount = 80
progress.amount = 100

//MARK: METHODS

// Functions inside structs are called methods
struct City {
    var population: Int

    func collectTaxes() -> Int {
        return population * 1000
    }
}

let london = City(population: 9_000_000)
london.collectTaxes()

//MARK: MUTATING METHODS

// Properties inside a method can't be changed outside of struct unless it is inside a mutation method
struct Person {
    var name: String

    mutating func makeAnonymous() {
        name = "Anonymous"
    }
}

// The struct must aslo be a variable so it's values may be manipulated
var person = Person(name: "Ed")
person.makeAnonymous()

//MARK: PROPPERTIES AND METHODS OF STRINGS

let string = "Do or do not, there is no try."
//You can read the number of characters in a string using its count property:
print(string.count)

//They have a hasPrefix() method that returns true if the string starts with specific letters:
print(string.hasPrefix("Do"))

//You can uppercase a string by calling its uppercased() method:
print(string.uppercased())

//And you can even have Swift sort the letters of the string into an array:
print(string.sorted())

//MARK: PROPERTIES AND METHODS OF ARRAYS

var toys = ["Woody"]

//You can read the number of items in an array using its count property:
print(toys.count)

//If you want to add a new item, use the append() method like this:
toys.append("Buzz")

//You can locate any item inside an array using its firstIndex() method, like this:
toys.firstIndex(of: "Buzz")

//That will return 1 because arrays count from 0. Just like with strings, you can have Swift sort the items of the array alphabetically:
print(toys.sorted())

//Finally, if you want to remove an item, use the remove() method like this:
toys.remove(at: 0)
