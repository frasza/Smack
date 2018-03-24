//
//  MessageCell.swift
//  Smack
//
//  Created by Žan Fras on 24/03/2018.
//  Copyright © 2018 Žan Fras. All rights reserved.
//

import UIKit

class MessageCell: UITableViewCell {

    //MARK: - Outlets
    /***************************************************************/
    @IBOutlet weak var userImage: CircleImage!
    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var timeStampLabel: UILabel!
    @IBOutlet weak var messageLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func configureCell(message: Message) {
        messageLabel.text = message.message
        userImage.image = UIImage(named: message.userAvatar)
        userImage.backgroundColor = UserDataService.instance.returnUIColor(components: message.userAvatarColor)
        userNameLabel.text = message.userName
        //timeStampLabel.text = message.timestamp
    }
    
}
