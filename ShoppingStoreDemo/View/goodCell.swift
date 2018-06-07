//
//  goodCell.swift
//  ShoppingStoreDemo
//
//  Created by llll79531 on 2018/5/30.
//  Copyright © 2018年 llll79531. All rights reserved.
//

import UIKit

class goodCell: UICollectionViewCell {
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var likesImg: UIImageView!
    @IBOutlet weak var price: UILabel!
    @IBOutlet weak var name: UILabel!
    
    func configure(good:Goods){
        image.image = UIImage(named: good.imageURL)
        price.text = good.price
        name.text = good.name
    }
}
