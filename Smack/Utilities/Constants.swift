//
//  Constants.swift
//  Smack
//
//  Created by Žan Fras on 18/03/2018.
//  Copyright © 2018 Žan Fras. All rights reserved.
//

import Foundation

typealias CompletionHandler = (_ Success: Bool) -> ()

// URL Constants
let BASE_URL = "https://smackslovenia.herokuapp.com/v1/"
let URL_REGISTER = "\(BASE_URL)account/register"

// Segues
let GO_TO_LOGIN = "goToLogin"
let GO_TO_CREATEACCOUNT = "goToCreateAccount"
let UNWIND = "unwindToChannel"

// User Defaults
let TOKEN_KEY = "token"
let LOGGED_IN_KEY = "loggedIn"
let USER_EMAIL = "userEmail"

