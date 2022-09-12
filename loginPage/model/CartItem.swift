//
//  CartItem.swift
//  loginPage
//
//  Created by Obaida on 9/1/22.
//

import Foundation


class CartItem {
    
//    var quantity : Int = 1
//    var items1 : Items
//
//    var subTotal : Float { get { return Float(items1.price) * Float(quantity) } }
//
//    init(items: Items) {
//        self.items1 = items
//    }
    
    
    var itemName:String
    var itemPrice:Double
    var itemimage:String
    

    init(item:String,price:Double,itemimage:String) {
        self.itemName=item
        self.itemPrice=price
        self.itemimage=itemimage
    }
    
    
//    init(_  dictionary:NSDictionary) {
//        itemName=dictionary[itemn] as! String
//        itemPrice=dictionary[itemp] as! Double
//        itemimage=dictionary[itemim] as! String
//
//    }
//
//    func cartdic(_ cartitem:CartItem ) -> NSDictionary {
//
//        return NSDictionary(objects: [cartitem.itemName,cartitem.itemPrice,cartitem.itemimage], forKeys: [itemn as NSCopying , itemp as NSCopying , itemim as NSCopying])
//        }
//
//
//
//
//    let itemn = "itemn"
//    let itemp = "itemprice"
//    let itemim="itemimage"
//
//
}
