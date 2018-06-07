//
//  Goods.swift
//  ShoppingStoreDemo
//
//  Created by llll79531 on 2018/5/30.
//  Copyright © 2018年 llll79531. All rights reserved.
//

import Foundation
class Goods {
    private var _name:String!
    private var _price:String!
    private var _imageURL:String!
    var name: String{
        return _name
    }
    var price: String{
        return _price
    }
    var imageURL: String{
        return _imageURL
    }
    init(name:String, price:String, imageURL:String) {
        _name = name
        _price = price
        _imageURL = imageURL
    }
    
}
