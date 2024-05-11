//
//  AddCredential.swift
//  fidelius-macOS
//
//  Created by Steven Quintana on 5/7/24.
//

import Foundation

func addCredential(name: String, passLength: Int = 64) -> Void {
    let password: String = generatePassword(passLength: passLength)
    
    let credential = Credential(name: name, password: password)
    
    print("Name: \(credential.name)")
    print("Password: \(credential.password)")
    
}

func generatePassword(passLength: Int) -> String {
    let characterOptions: [[String]] = [
        ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"],
        ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"],
        ["!", "@", "#", "$", "%", "^", "&", "*", "(", ")", "_", "+", "-", "=", "[", "]", "{", "}", "|", ";", ":", ",", ".", "<", ">", "?"],
        ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"]
    ]
    var password = ""
    
    // Get a random character from the options matrix and add it to the password string until the desired length is reached
    for _ in 0..<passLength {
        let row = Int(arc4random_uniform(UInt32(4 - 1))) + 0 // Get a random number for number of rows in charOptions (always 4)
        let col = Int(arc4random_uniform(UInt32(characterOptions[row].count - 1))) + 0 // Get a random number between 0 and num of chars in the selected row
        
        password += characterOptions[row][col]
    }
    
    return password
}
