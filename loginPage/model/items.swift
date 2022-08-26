//
//  items.swift
//  loginPage
//
//  Created by Obaida on 8/22/22.
//

import Foundation
import UIKit

class item {
    
    var ItemID:String?
    var CategoreyID:String?
    var ItemName:String?
    var ItemDesc:String?
    var ItemPrice:Double?
    var ItemImages:[String]?
    
    
    init() {
        
    }
    
    init(_ dictionary : NSDictionary ) {
        
        ItemID = dictionary[IID] as? String
        CategoreyID = dictionary[CatID] as? String
        ItemName = dictionary[IName] as? String
        ItemDesc = dictionary[IDesc] as? String
        ItemPrice=dictionary[IPrice] as? Double
        ItemImages=dictionary[imigelink] as? [String]
        
        }
    
    
    // functions
    
    func savetofirebase(_ Item:item){
        firebaseRefrences(.items).document(Item.ItemID!).setData(itemdictionary(Item) as! [String:Any])
    }
    
    func itemdictionary(_ Item:item) -> NSDictionary {
        return NSDictionary(object:[Item.ItemID,Item.CategoreyID ,Item.ItemName,Item.ItemDesc,Item.ItemPrice,Item.ItemImages], forKey:[IID as! NSCopying,CatID as! NSCopying , IName as! NSCopying,IDesc as! NSCopying,IPrice as! NSCopying,imigelink as! NSCopying] as NSCopying)
    }
  
}
