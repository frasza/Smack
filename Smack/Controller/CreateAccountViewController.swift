//
//  CreateAccountViewController.swift
//  Smack
//
//  Created by Žan Fras on 18/03/2018.
//  Copyright © 2018 Žan Fras. All rights reserved.
//

import UIKit

class CreateAccountViewController: UIViewController {

    //MARK: - Outlets
    /***************************************************************/
    
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var userImage: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    //MARK: - Actions
    /***************************************************************/
    
    @IBAction func createAccountButtonPressed(_ sender: UIButton) {
        guard let email = emailTextField.text, emailTextField.text != "" else { return }
        guard let pass = passwordTextField.text, passwordTextField.text != "" else { return }
        
        AuthService.instance.registerUser(email: email, password: pass) { (success) in
            if success {
                print("Registered user!")
                AuthService.instance.loginUser(email: email, password: pass, completion: { (success) in
                    if success {
                        print("Logged in user!", AuthService.instance.authToken)
                    }
                })
            }
        }
    }
    
    @IBAction func chooseAvatarButtonPressed(_ sender: UIButton) {
        
    }
    
    @IBAction func generateColorButtonPressed(_ sender: UIButton) {
        
    }
    
    @IBAction func closeButtonPressed(_ sender: UIButton) {
        performSegue(withIdentifier: UNWIND, sender: self)
    }
    
}
