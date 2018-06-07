//
//  GoodSearchVC.swift
//  ShoppingStoreDemo
//
//  Created by llll79531 on 2018/5/30.
//  Copyright © 2018年 llll79531. All rights reserved.
//

import UIKit

class GoodSearchVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    var goods = [Goods]()
    let good1 = Goods(name: "嚴選台南無刺虱目魚肚系列產品", price: "150", imageURL: "1")
    let good2 = Goods(name: "台灣薄鹽熟毛豆A級品", price: "70", imageURL: "3")
    let good3 = Goods(name: "鮭魚碎肉塊(1KG/包)鮭魚炒飯聖品", price: "250", imageURL: "2")
    let good4 = Goods(name: "嚴選雙囍香魚組(公母各5尾)", price: "350", imageURL: "4")
    let good5 = Goods(name: "鮭魚碎肉塊(2KG/包)鮭魚炒飯聖品", price: "190", imageURL: "3")
    let good6 = Goods(name: "鮭魚碎肉塊(3KG/包)鮭魚炒飯聖品", price: "2299", imageURL: "1")
    let good7 = Goods(name: "鮭魚碎肉塊(4KG/包)鮭魚炒飯聖品", price: "249", imageURL: "2")
    let good8 = Goods(name: "鮭魚碎肉塊(5KG/包)鮭魚炒飯聖品", price: "325", imageURL: "4")
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        goods.append(good1)
        goods.append(good2)
        goods.append(good3)
        goods.append(good4)
        goods.append(good5)
        goods.append(good6)
        goods.append(good7)
        goods.append(good8)
        collectionView.delegate = self
        collectionView.dataSource = self
    }
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return goods.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "goodCell", for: indexPath) as? goodCell{
            cell.configure(good: goods[indexPath.row])
            return cell
        }
        else{
            return UICollectionViewCell()
        }
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let good = goods[indexPath.row]
        performSegue(withIdentifier: "GoodInfo", sender: good)
    }
    @IBAction func gotoShoppingCart(_ sender: Any) {
        performSegue(withIdentifier: "GotoShoppingCart", sender: nil)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? GoodInfoVC{
            if let goodInfo = sender as? Goods{
                destination.goodInfo = goodInfo
            }
        }
    }

}
