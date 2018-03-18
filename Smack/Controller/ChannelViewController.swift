//
//  ChannelViewController.swift
//  Smack
//
//  Created by Žan Fras on 18/03/2018.
//  Copyright © 2018 Žan Fras. All rights reserved.
//

import UIKit

class ChannelViewController: UIViewController {
    
    //MARK: - Outlets
    /***************************************************************/
    
    @IBOutlet weak var loginButton: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        self.revealViewController().rearViewRevealWidth = self.view.frame.size.width - 60
    }
    
    @IBAction func loginButtonPressed(_ sender: UIButton) {
        performSegue(withIdentifier: GO_TO_LOGIN, sender: self)
    }
    

}
