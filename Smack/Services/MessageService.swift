//
//  MessageService.swift
//  Smack
//
//  Created by Žan Fras on 23/03/2018.
//  Copyright © 2018 Žan Fras. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

class MessageService {
    
    static let instance = MessageService()
    
    var channels = [Channel]()
    
    func getAllChannels(completion: @escaping CompletionHandler) {
        Alamofire.request(URL_GET_CHANNELS, method: .get, parameters: nil, encoding: JSONEncoding.default, headers: BEARER_HEADER).responseJSON { (response) in
            
            if response.result.error != nil {
                completion(false)
                debugPrint(response.result.error as Any)
            } else {
                guard let data = response.data else { return }
                if let json = JSON(data).array {
                    for item in json {
                        let name = item["name"].stringValue
                        let description = item["description"].stringValue
                        let id = item["_id"].stringValue
                        
                        let channel = Channel(channelTitle: name, channelDescription: description, id: id)
                        self.channels.append(channel)
                    }
                    completion(true)
                }
            }
        }
    }
    
}
