//
//  ViewController.swift
//  LogInWithFB
//
//  Created by Nathan on 07/05/2019.
//  Copyright © 2019 Nathan. All rights reserved.
//

import UIKit
import FacebookLogin
class ViewController: UIViewController, LoginButtonDelegate {
    func loginButtonDidCompleteLogin(_ loginButton: LoginButton, result: LoginResult) {
        print("Log in success!")
    }
    
    func loginButtonDidLogOut(_ loginButton: LoginButton) {
        print("log out?")
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let loginButton = LoginButton(readPermissions: [ .publicProfile, .email, .userFriends ])
        loginButton.center = view.center
        
        view.addSubview(loginButton)
    }


}

