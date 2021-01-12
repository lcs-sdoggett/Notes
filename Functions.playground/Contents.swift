import Cocoa

// Here we name the functin "printHelp"
func printHelp() {
    
    // Here we establish the contast message
    let message = """
Welcome to MyApp!

Run this app inside a directory of images and
MyApp will resize them all into thumbnails
"""

    // Here we print the message
    print(message)
}

// This is where we call the function
printHelp()
