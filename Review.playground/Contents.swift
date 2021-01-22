import Cocoa

//MARK: OPTIONALS

// Quesiton mark means the return value string is an optional
func getHaterStatus(weather: String) -> String? {
    if weather == "sunny" {
        return nil
    } else {
        return "Hate"
    }
}

// This code below wont run, because "getHaterStatus" may return a nil value
//var status: String
//status = getHaterStatus(weather: "rainy")

// These are the two ways to fix it:

var status: String?
status = getHaterStatus(weather: "rainy")

// or

var status2 = getHaterStatus(weather: "rainy")

//MARK: OPTIONAL CHAINING

// Album released returns an optional string, it may return a string or return nothing at all.
func albumReleased(year: Int) -> String? {
    switch year {
    case 2006: return "Taylor Swift"
    case 2008: return "Fearless"
    case 2010: return "Speak Now"
    case 2012: return "Red"
    case 2014: return "1989"
    default: return nil
    }
}

// This means, if a string was returned, make it upper case. Where the question mark happens is where optional chanining occurs. Everything after the questionmark will run if there is a value
let album = albumReleased(year: 2006)?.uppercased()
print("The album is \(album)")


// The double question mark is the nil coalescing operator. In this situation it means "if albumReleased() returned a value then put it into the album variable, but if albumReleased() returned nil then use 'unknown' instead." This means it is no longer optional. You don't need to unwrap anything, you are sure you'll have real data to work with.
let album2 = albumReleased(year: 2006) ?? "unknown"
print("The album is \(album2)")


//MARK: ENUMERATIONS

// Enumerations are a way for you to define your own kind of value
// Enumerations can have values attached to them that you define. Ex "wind(speed: int)
// Use the "let" keyword to access the value inside a case, then the "where" keyword for pattern matching.


enum WeatherType {
    case sun
    case cloud
    case rain
    case wind(speed: Int)
    case snow
}

func getHaterStatus(weather: WeatherType) -> String? {
    switch weather {
    case .sun:
        return nil
    case .wind(let speed) where speed < 10:
        return "meh"
    case .cloud, .wind:
        return "dislike"
    case .rain, .snow:
        return "hate"
    }
}

getHaterStatus(weather: WeatherType.wind(speed: 5))



