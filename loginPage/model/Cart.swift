////
////  Cart.swift
////  loginPage
////
////  Created by Obaida on 9/1/22.
////
//
//import Foundation
//
//
//
//class Cart {
//    
//     var cartitems : [CartItem] = []
//}
//
//extension Cart {
//    var total: Float {
//        get { return cartitems.reduce(0.0) { value, item in
//            value + item.subTotal
//            }
//        }
//    }
//    
//    var totalQuantity : Int {
//        get { return cartitems.reduce(0) { value, item in
//            value + item.quantity
//            }
//        }
//    }
//    
//    func updateCart(with Items: Items) {
//        if !self.contains(items:Items) {
//            self.add(product:Items)
//        }
//    }
//    
//    func updateCart() {
//        
//        for item in self.cartitems {
//            if item.quantity == 0 {
//                updateCart(with: item.items1)
//            }
//        }
//    }
//    
//    func add(product: Items) {
//        let item = cartitems.filter { $0.items1 == product }
//        
//        if item.first != nil {
//            item.first!.quantity += 1
//        } else {
//            cartitems.append(CartItem(items: product))
//           
//        }
//    }
//    
//    func remove(product: Items) {
//        guard let index = cartitems.index(where: { $0.items1 == product }) else { return}
//        cartitems.remove(at: index)
//    }
//    
//    func contains(items: Items) -> Bool {
//        let item = cartitems.filter { $0.items1 == items }
//        return item.first != nil
//    
//}
//
//}
