//
//  Validations.swift
//  ValidationsStrings
//
//  Created by mac on 08/12/21.
//

import Foundation

struct RegexFormats {
    static let usernameRegex = "^(?=.*[a-z])(?=.*[0-9])[0-9a-zA-Z!@#%^*()\\-_=+{}|?>.<,:;~`’]{8,16}$"
    static let emailRegex = "[a-zA-Z0-9]+@[a-zA-Z0-9]+\\.[a-zA-Z]{2,3}"
    static let mobileNumRegex = "^[0-9]{10,10}$"
    static let passwordRegex = "^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])[0-9a-zA-Z!@#%^*()\\-_=+{}|?>.<,:;~`’]{8,16}$"
    
    /*
     Password must have atleast one small alphabet, one large Alplabet and a number and set of optional values provided at end of regex and length is 8-16 characters only
     */
}

struct Validations {
    
    static func validateUsername(username: String) -> Bool {
        let usernameTest = NSPredicate(format: "SELF MATCHES %@", RegexFormats.usernameRegex)
        return usernameTest.evaluate(with: username)
    }
    
    static func validateEmail(emailStr: String) -> Bool {
        let emailPredicate = NSPredicate(format:"SELF MATCHES %@", RegexFormats.emailRegex)
        return emailPredicate.evaluate(with: emailStr)
    }

    static func validateMobileNumber(mobileNumStr: String) -> Bool {
        let mobileNumTest = NSPredicate(format: "SELF MATCHES %@", RegexFormats.mobileNumRegex)
        return mobileNumTest.evaluate(with: mobileNumStr)
    }

    static func validatePassword(password: String) -> Bool {
        let passwordTest = NSPredicate(format: "SELF MATCHES %@", RegexFormats.passwordRegex)
        return passwordTest.evaluate(with: password)
    }
    
    static func formattedString(str: String) -> String {
        let formattedString = str.trimmingCharacters(in: CharacterSet.whitespaces)
        return formattedString
    }
    
    static func comparePasswords(password: String, confirmPassword: String) -> Bool {
        if password == confirmPassword {
            return true
        }
        return false
    }
    
}
