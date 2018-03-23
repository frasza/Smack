//
//  ProfileViewController.swift
//  Smack
//
//  Created by Žan Fras on 23/03/2018.
//  Copyright © 2018 Žan Fras. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {
    
    //MARK: - Outlets
    /***************************************************************/
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var usernameLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var background: UIView!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        setupView()
        
        let tap = UIGestureRecognizer(target: self, action: #selector(dimissView))
        background.addGestureRecognizer(tap)
    }
    
    @IBAction func closeButtonPressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func logoutButtonPressed(_ sender: UIButton) {
        UserDataService.instance.logoutUser()
        NotificationCenter.default.post(name: NOTIF_USER_DATA_DID_CHANGE, object: nil)
        dismiss(animated: true, completion: nil)
    }
    
    func setupView() {
        profileImage.image = UIImage(named: UserDataService.instance.avatarName)
        profileImage.backgroundColor = UserDataService.instance.returnUIColor(components: UserDataService.instance.avatarColor)
        usernameLabel.text = UserDataService.instance.name
        emailLabel.text = UserDataService.instance.email
    }
    
    @objc func dimissView() {
        dismiss(animated: true, completion: nil)
    }
    
}
