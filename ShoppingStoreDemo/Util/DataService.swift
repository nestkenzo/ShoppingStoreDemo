//
//  DataService.swift
//  ShoppingStoreDemo
//
//  Created by llll79531 on 2018/5/21.
//  Copyright © 2018年 llll79531. All rights reserved.
//

import Foundation
import Firebase

let DB_BASE = Database.database().reference()
let STORAGE_BASE = Storage.storage().reference()
class DataService {
    static let ds = DataService()
    private var _REF_USER = DB_BASE.child("Users")
    private var _REF_POST = DB_BASE.child("Posts")
    private var _REF_POST_IMAGES = STORAGE_BASE.child("post-pics")
    
    var REF_USER:DatabaseReference{
        return _REF_USER
    }
    var REF_POST:DatabaseReference{
        return _REF_POST
    }
    var REF_POST_IMAGES:StorageReference{
        return _REF_POST_IMAGES
    }
    
    func creatUsers(uid: String, userData: Dictionary<String,String>){
        REF_USER.child(uid).updateChildValues(userData)
    }
    
    
}
