//
//  CommonView.swift
//  ShoppingStoreDemo
//
//  Created by llll79531 on 2018/5/14.
//  Copyright © 2018年 llll79531. All rights reserved.
//

import UIKit
class CommonView: UITextField {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        layer.borderColor = UIColor(red: SHADOW_GRAY, green: SHADOW_GRAY, blue: SHADOW_GRAY, alpha: 0.2).cgColor
        layer.borderWidth = 1.0
        layer.cornerRadius = 2.0
    }
}
