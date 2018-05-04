////
////  main.swift
////  RotatingLetters
////
////  Created by Gordon, Russell on 2018-04-06.
////  Copyright © 2018 Gordon, Russell. All rights reserved.
//
import Foundation

// INPUT

// Create a global variable that will store the valid input
var n = 0

//Loop forever until valid input is found
while 1 == 1 {
    
    //*
    // Test #1: Wait for input AND at the same time, ensure input is not nil
    guard let givenInput = readLine() else {
        
        // If we got inside this structure, we have nil input
        // So, we should not do any more tests
        // Just prompt again
        continue
    }
    
    // Test #2: Is it an integer?
    guard let givenInteger = Int(givenInput) else{
        
        //If we got here, inside the structure, we have input
        //that cannot be made into an integer (e.g.: "ninety-five" or "LOL")
        
        continue // ensure
    }
    
    //Test #3: Is the integer in the correct range?
    //   Less than 1
    //   Or
    //   More than 32500
    if givenInteger < 1  || givenInteger > 32500 {
        
        // If we got here, number is NOT in correct range
        continue // go to top of while loop
    
    }
    
    // If we got here (All three tests passed) We know we have input
    n = givenInteger
    break // IMPORTANT : Gets us out of the infinite while loop
    
}  // End of while loop

var sum = 1
// PROCESS
for i in 2...n/2 {
    print(i)
    if n % i == 0 {
        sum += i
    }
}
print(sum)


//// Get the user input
//var rawInput = readLine()
//
//// Print out the input provided
//print("You said:")
//print(rawInput)
//
//// Check for nil
//guard let givenInput = rawInput else{
//    exit(9)
//}
//
//// Make sure the input is an integer
//guard let integerInput = Int(givenInput) else{
//    exit(9)
//}
//
////Check the integer is in the right range
//if integerInput < 1 || integerInput > 32500 {
//    exit(9)
//}
//
////print the input
//print("You said: \(integerInput)")
//
//var divisibleNumber = 0
//
//for i in 1...integerInput - 1 {
//    if integerInput%i == 0{
//    divisibleNumber += i
//    }
//}






