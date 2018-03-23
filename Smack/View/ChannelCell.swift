//
//  ChannelCell.swift
//  Smack
//
//  Created by Žan Fras on 23/03/2018.
//  Copyright © 2018 Žan Fras. All rights reserved.
//

import UIKit

class ChannelCell: UITableViewCell {

    //MARK: - Outlets
    /***************************************************************/
    @IBOutlet weak var channelName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        if selected {
            layer.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.1999678938)
        } else {
            layer.backgroundColor = UIColor.clear.cgColor
        }
    }

    func configureCell(channel: Channel) {
        let title = channel.channelTitle ?? ""
        channelName.text = title
    }
    
}
