//
//  ViewController.swift
//  ValidationsStrings
//
//  Created by mac on 07/12/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        verifyUsername(username: "GaliSrikanth19")
        verifyEmailId(emailId: "GaliSrikanth19@gmail.com")
        verifyMobileNumber(mobileNum: "9963212789")
        verifyPassword(password: "Helloworld17*")
        formattedString(str: "   Srika")
        comparePasswords(password: "Helloworld17*", confirmPassword: "Helloworld17")
    }
    
    private func verifyUsername(username: String) {
        if Validations.validateUsername(username: username) {
            print("Valid Username")
        } else {
            print("InValid Username")
        }
    }
    
    private func verifyEmailId(emailId: String) {
        if Validations.validateEmail(emailStr: emailId) {
            print("Valid Email")
        } else {
            print("InValid Email")
        }
    }
    
    private func verifyMobileNumber(mobileNum: String) {
        if Validations.validateMobileNumber(mobileNumStr: mobileNum) {
            print("Valid Mobile Number")
        } else {
            print("InValid Mobile Number")
        }
    }
    
    private func verifyPassword(password: String) {
        if Validations.validatePassword(password: password) {
            print("Valid Password")
        } else {
            print("InValid Password")
        }
    }
    
    private func formattedString(str: String) {
        print(str.count)
        let formattedStr = Validations.formattedString(str: str)
        print(formattedStr.count)
    }
    
    private func comparePasswords(password: String, confirmPassword: String) {
        if Validations.comparePasswords(password: password, confirmPassword: confirmPassword) {
            print("Passwords match")
        } else {
            print("Passwords doesn't match")
        }
    }
    
}
