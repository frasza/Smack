//
//  AvatarCell.swift
//  Smack
//
//  Created by Žan Fras on 20/03/2018.
//  Copyright © 2018 Žan Fras. All rights reserved.
//

import UIKit

class AvatarCell: UICollectionViewCell {
    
    @IBOutlet weak var avatarImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        setupView()
    }
    
    func setupView() {
        layer.cornerRadius = 10.0
        layer.backgroundColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)
        clipsToBounds = true
    }
    
}
