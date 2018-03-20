//
//  AvatarCell.swift
//  Smack
//
//  Created by Žan Fras on 20/03/2018.
//  Copyright © 2018 Žan Fras. All rights reserved.
//

import UIKit

enum AvatarType {
    case dark
    case light
}

class AvatarCell: UICollectionViewCell {
    
    @IBOutlet weak var avatarImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        setupView()
    }
    
    func configureCell(index: Int, type: AvatarType) {
        if type == .dark {
            avatarImage.image = UIImage(named: "dark\(index)")
            layer.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        } else {
            avatarImage.image = UIImage(named: "light\(index)")
            layer.backgroundColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)
        }
    }
    
    func setupView() {
        layer.cornerRadius = 10.0
        layer.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        clipsToBounds = true
    }
    
}
