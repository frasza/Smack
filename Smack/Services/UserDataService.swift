//
//  UserDataService.swift
//  Smack
//
//  Created by Žan Fras on 19/03/2018.
//  Copyright © 2018 Žan Fras. All rights reserved.
//

import Foundation

class UserDataService {
    
    static let instance = UserDataService()
    
    public private(set) var id: String = ""
    public private(set) var avatarColor: String = ""
    public private(set) var avatarName: String = ""
    public private(set) var email: String = ""
    public private(set) var name: String = ""
    
    func setUserData(id: String, avatarColor: String, avatarName: String, email: String, name: String) {
        
        self.id = id
        self.avatarColor = avatarColor
        self.avatarName = avatarName
        self.email = email
        self.name = name
        
    }
    
    func setAvatarName(avatarName: String) {
        
        self.avatarName = avatarName
        
    }
    
}
