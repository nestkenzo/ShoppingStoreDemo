//
//  ViewController.swift
//  ShoppingStoreDemo
//
//  Created by llll79531 on 2018/5/14.
//  Copyright © 2018年 llll79531. All rights reserved.
//

import UIKit
import FBSDKCoreKit
import FBSDKLoginKit
import Firebase
import SwiftKeychainWrapper
class ViewController: UIViewController {

  

//    var DataService: DataService!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }

    override func viewDidAppear(_ animated: Bool) {
        if let keyChain = KeychainWrapper.defaultKeychainWrapper.string(forKey: "uid"){
            print("JESS:KEYCHAIN")
            performSegue(withIdentifier: "GoToMain", sender: nil)
        }

    }

    @IBAction func FBLogin(_ sender: Any) {
        let facebookLogin = FBSDKLoginManager()
        facebookLogin.logIn(withReadPermissions: ["email"], from: self) { (result, error) in
            if error != nil{
                 print("JESS: Unable to authenticate with Facebook - \(error)")
            }else if result?.isCancelled == true {
                print("JESS:User Cancel")
            }else{
                let credential = FacebookAuthProvider.credential(withAccessToken: FBSDKAccessToken.current().tokenString)
                self.firebaseLogin(credential:credential)
            }
        }
    }
    func firebaseLogin(credential: AuthCredential) {
        Auth.auth().signIn(with: credential) { (user, error) in
            if error != nil{
                print("JESS: Unable to authenticate with firebase - \(error)")
            }else{
                if let user = user {
                    let userData = ["provider" : user.providerID]
                    self.LoginSuccess(uid: user.uid, userData: userData)
                }
            }
        }
    }
    func LoginSuccess(uid:String, userData: Dictionary<String,String>){
        DataService.ds.creatUsers(uid: uid, userData: userData)
        let keyChainResult = KeychainWrapper.defaultKeychainWrapper.set(uid, forKey:"uid")
        performSegue(withIdentifier: "GoToMain", sender: nil)

    }
    @IBAction func GotoMain(_ sender: Any) {
    }
    
}

