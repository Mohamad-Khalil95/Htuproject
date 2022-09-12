//
//
import Foundation

import UIKit
import SwiftyJSON
import Alamofire


class Items :Codable,Equatable{
   
    
    var id: String
    var title : String
    
    var price : Double
    var description: String
    var category:String
    var image:String
//
    
    
    
  

    
    init(_ itemsdic: JSON) {
        id = itemsdic["id"].stringValue
        title = itemsdic["title"].stringValue
        price = itemsdic["price"].doubleValue
        description = itemsdic["description"].stringValue
        category = itemsdic["category"].stringValue
        image = itemsdic["image"].stringValue
        
        
        
        
        
        
       
    }
}
    

extension Items {
    // MARK: Equatable
    static func ==(lhs: Items, rhs: Items) -> Bool {
        return lhs.title == rhs.title && lhs.price == rhs.price
    }
    
    func displayPrice() -> String {
        return String.init(format: "$ %.02f per %@", price)
    }
}


//    init(_ name:String ,_ catid:String,_ itemdesc:String,_ itemPrice:String,_ ImageName:String) {
//        Itemid=""
//        self.Itemname=name
//        self.Itemdesc=itemdesc
//        self.Itemprice=itemPrice
//        self.ItemimageName=ImageName
//        self.catid=catid
//
//        Itemimage = UIImage(named:(ItemimageName!))
//
//
//    }
//
//    init(_  dictionary:NSDictionary) {
//        Itemid=dictionary[IID] as! String?
//        Itemname=dictionary[IName] as! String?
//        catid=dictionary[CID] as! String?
//        Itemname=dictionary[IDesc] as! String?
//        Itemname=dictionary[IPrice] as! String?
//        Itemimage=UIImage(named:dictionary[imigelink] as! String)
//
//    }
//}
//
//
//    //download items from firebase
//
//func downloadItemsfromFirebase(_ withcatid:String,completion : @escaping(_ itemsarr:[Items] )->Void)   {
//        var ItemsArr:[Items]=[]
//    firebaseRefrences(.Items).whereField(CID, isEqualTo: withcatid).getDocuments { (snapshot, error) in
//            guard let snapshot=snapshot else{
//                completion(ItemsArr)
//                return
//            }
//
//
//
//            if !snapshot .isEmpty{
//
//                for Itemdic in snapshot.documents{
//
//                    ItemsArr.append(Items(Itemdic.data() as NSDictionary))
//
//
//
//                }
//
//
//
//            }
//
//            completion(ItemsArr)
//        }
//    }
//
//
//
//
//
//func saveItems(_ Items:Items)  {
//
//    let id = UUID().uuidString
//    Items.Itemid=id
//    firebaseRefrences(.Items).document(Items.Itemid!).setData(Itemsdic(Items) as! [String : Any])
//
//}
//
//
//// helpers
//
//
//func Itemsdic(_ items:Items ) -> NSDictionary {
//
//    return NSDictionary(objects: [items.Itemid,items.Itemname,items.catid,items.Itemimage,items.Itemdesc,items.Itemprice], forKeys: [IID as NSCopying , IName as NSCopying,CID as NSCopying  ,imigelink as NSCopying,IDesc as NSCopying,IPrice as NSCopying])
//    }
//
//
////create items
////func createitem() {
////    let tshirts=Items("Men's Premium Organic T-shirt", "100% Organic ring-spun Combed Cotton", "4.33","tshirt")
////
////
////
////
////    let arrOfitems = [tshirts]
////
////
////    for item  in arrOfitems {
////        saveItems(item)
////    }
//
//
//
//
//
//
//
//
