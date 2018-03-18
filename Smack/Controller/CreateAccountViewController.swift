//
//  CreateAccountViewController.swift
//  Smack
//
//  Created by Žan Fras on 18/03/2018.
//  Copyright © 2018 Žan Fras. All rights reserved.
//

import UIKit

class CreateAccountViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBAction func closeButtonPressed(_ sender: UIButton) {
        performSegue(withIdentifier: UNWIND, sender: self)
    }
    
}
