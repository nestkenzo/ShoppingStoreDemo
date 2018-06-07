//
//  GoodInfoVC.swift
//  ShoppingStoreDemo
//
//  Created by llll79531 on 2018/6/1.
//  Copyright © 2018年 llll79531. All rights reserved.
//

import UIKit

class GoodInfoVC: UIViewController {

    @IBOutlet weak var price: UILabel!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var image: UIImageView!
    private var _goodInfo:Goods!
    var goodInfo: Goods{
        get{
            return _goodInfo
        }set{
            _goodInfo = newValue
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        setParam()
        
    }
    
    @IBAction func gotoShoppingCart(_ sender: Any) {
    }
    @IBAction func gotoGoodSearch(_ sender: Any) {
        performSegue(withIdentifier: "GotoGoodSearch", sender: nil)
    }
    func setParam(){
        image.image = UIImage(named: goodInfo.imageURL)
        price.text = "1"
        name.text = goodInfo.name
    }

  

}
