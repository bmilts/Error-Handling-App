//
//  ViewController.swift
//  errorHandling
//
//  Created by Brendan Milton on 31/07/2019.
//  Copyright © 2019 Brendan Milton. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // Potential errors enum
    enum LoginError: Error {
        case incompleteForm
        case invalidEmail
        case incorrectPasswordLength
    }

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func loginButtonClicked(_ sender: Any) {
        
        // Any "Throws" function will require a Do-catch
        
        do {
            try login()
            // Actual login code.
            Alert.showBasic(title: "Success!", message: "If this was a real app you'd be logged in by now!", vc: self)
        
        } catch LoginError.incompleteForm {
            Alert.showBasic(title: "Incomplete form", message: "Please fill out both email and password fields", vc: self)
        } catch LoginError.invalidEmail {
            Alert.showBasic(title: "Invalid Email Format", message: "Please make sure you format your email correctly", vc: self)
        } catch LoginError.incorrectPasswordLength {
            Alert.showBasic(title: "Password too short", message: "Password should be at least 8 characters long", vc: self)
        }
        // Catch block requires a generalized error
        catch {
            Alert.showBasic(title: "Unable to Login", message: "There was an error when attempting to login", vc: self)
        }
    }
    
    func login() throws {
        
        let email = emailTextField.text!
        let password = passwordTextField.text!
        
        // Pretend login functionality works
        if email.isEmpty || password.isEmpty {
            throw LoginError.incompleteForm
        }
        
        if !email.isValidEmail {
            throw LoginError.invalidEmail
        }
        
        if password.count < 8 {
            throw LoginError.incorrectPasswordLength
        }
        
    }
}

