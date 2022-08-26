//
//  File.swift
//  loginPage
//
//  Created by Obaida on 8/10/22.
//

import Foundation

import UIKit
class category {
    var id: String
    var name : String
    var image:UIImage?
    var imageName:String?
    
    init(_ name:String , _ ImageName:String) {
        id=""
        self.name=name
        imageName=ImageName
        image = UIImage(named:(imageName!))
        

    }
    
    init(_  dictionary:NSDictionary) {
        id=dictionary[CobjectID] as! String
        name=dictionary[Cname] as! String
        image=UIImage(named:dictionary[Cimage]as!String)
        
    }
}
    
    
    //download cat from firebase
    
    func downloadCatfromFirebase(completion : @escaping(_ catecoryarray:[category] )->Void)   {
        var categoryarr:[category]=[]
        firebaseRefrences(.category).getDocuments { (snapshot, error) in
            guard let snapshot=snapshot else{
                completion(categoryarr)
                return
            }
            
        
        
            if !snapshot .isEmpty{
                
                for categorydic in snapshot.documents{
                    
                    categoryarr.append(category(categorydic.data() as NSDictionary))
                    
                   
                    
                }
          
                
                
            }
            
            completion(categoryarr)
        }
    }

    
        
        

func saveTOFirebase(_ category:category)  {
    
    let id = UUID().uuidString
    category.id=id
    firebaseRefrences(.category).document().setData(categorydictionary(category) as! [String : Any])
   
}


// helpers


func categorydictionary(_ category:category ) -> NSDictionary {
    
    return NSDictionary(objects: [category.id,category.name,category.imageName], forKeys: [CobjectID as NSCopying , Cname as NSCopying , Cimage as NSCopying])
    }


//create category
//func createCatageory() {
//   // let clothes = category("clothes", "cloth")
//    //let electronics = category("electronics", "elec")
//    //let toys = category("Toys", "toys")
//    let thirts = category("shirt", "shirts")
//
//
//
//    let arrOfcategory = [thirts]
//
//
//    for category  in arrOfcategory {
//        saveTOFirebase(category)
//    }
//
//}

