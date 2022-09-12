//
//  AddToBasketViewController.swift
//  loginPage
//
//  Created by Obaida on 8/22/22.
//

import UIKit

class AddToBasketViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    class Cart{
        var cartItems: [CartItem]
       init() {
          self.cartItems = []
    }}
    
    
    
    struct CartItem {
       var id: String
       var product: Items
       var count: Int
    init(product: Items, count: Int) {
       self.id = UUID().uuidString
       self.product = product
       self.count = count
    }}
    
//
//    func addProduct(product: Items){
//       var addNewProduct = true
//       for (index, item) in cartItems.enumerated() {
//          if item.product.id == product.id {
//             cartItems[index].count = cartItems[index].count + 1
//             addNewProduct = false
//          }
//       }
//       if addNewProduct {
//          cartItems.append(CartItem(product: product, count: 1))
//       }
//    }

}
