import Cocoa

//MARK: INITIALIZERS
// The standard initializer that comes with all structs is called a "memberwise initializer"
struct User {
    var username: String

    init() {
        username = "Anonymous"
        print("Creating a new user!")
    }
}

// user.username will be set to "Anonymous", to change that you must create an instance of user, and then manipulate it
var user = User()
user.username = "twostraws"

//MARK: REFERING TO THE CURRENT INSTANCE
// Self helps you distinguish between the property and the parameter – self.name refers to the property, whereas name refers to the parameter.
struct Person {
    var name: String

    init(name: String) {
        print("\(name) was born!")
        self.name = name
    }
}

//MARK: LAZY PROPERTIES

struct FamilyTree {
    init() {
        print("Creating family tree!")
    }
}

// Adding the word "lazy" in front of a property means it will not be part of the instances of the structure unless accessed
struct Person2 {
    var name: String
    lazy var familyTree = FamilyTree()

    init(name: String) {
        self.name = name
    }
}

var ed = Person2(name: "Ed")
// Because the property family tree is lazy, it will not be a part of ed until its accessed at least once
ed.familyTree

//MARK: STATIC PROPERTIES AND METHODS

// Class size belongs to the Student class and not an instance of the structure
struct Student {
    static var classSize = 0
    var name: String

    init(name: String) {
        self.name = name
        Student.classSize += 1
    }
}

let ed2 = Student(name: "Ed")
let taylor = Student(name: "Taylor")
// To print classSize, we must refer to the Student struct and not an instance of a student
print(Student.classSize)

//MARK: ACCESS CONTROL

// Only methods inside Person3 can read private properties such as id. "public' whcih allows all other code to use the methods or properties
struct Person3 {
    private var id: String

    init(id: String) {
        self.id = id
    }

    func identify() -> String {
        return "My social security number is \(id)"
    }
}

let ed3 = Person3(id: "12345")

