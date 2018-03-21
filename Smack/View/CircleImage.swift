//
//  CircleImage.swift
//  Smack
//
//  Created by Žan Fras on 21/03/2018.
//  Copyright © 2018 Žan Fras. All rights reserved.
//

import UIKit

@IBDesignable
class CircleImage: UIImageView {

    override func awakeFromNib() {
        super.awakeFromNib()
        setupView()
    }
    
    func setupView() {
        layer.cornerRadius = frame.width / 2
        clipsToBounds = true
    }
    
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        setupView()
    }
    
}
