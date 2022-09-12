//
//  faviurateVc.swift
//  loginPage
//
//  Created by Obaida on 9/10/22.
//

import UIKit

 import FirebaseAuth
import FirebaseFirestore

class faviurateVc: UIViewController,UITableViewDelegate,UITableViewDataSource {

    var favItems=[CartItem]()
    @IBOutlet weak var FavItems: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return favItems.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Favcell") as! favCell
             //  cell.setdata(Item[indexPath.row])
        
        cell.setdata(item: favItems[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
    
   
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        FavItems.delegate=self
        FavItems.dataSource=self
        
        

        
     

    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        favItems.removeAll()
        fetchcartbyUSer()
    }
    
    
    



     

        
        

        

        

        
       
        
        


        
        
        
        
        
        
        
       
        
  
    
       
        
        let currentuser=Auth.auth().currentUser?.uid
     func fetchcartbyUSer(){
         
            
            
           

            let db = Firestore.firestore()
        db.collection("userFav").whereField("uiid", isEqualTo:currentuser! )
            .getDocuments() { [self] (querySnapshot, err) in
                    if err != nil {
                        print("Error getting documents: \(err?.localizedDescription)")
                    } else {
                    
                        
                        
                      
                        for cartitem in querySnapshot!.documents{
                            let name = cartitem.data()["Itemname"] as? String
                            let price = cartitem.data()["itemprice"] as? Double
                            let image = cartitem.data()["itemimage"] as? String
                            
                            
                           
                            let doc = CartItem(item: name ?? "", price: price ?? 0.0, itemimage: image ?? "")
                   //   let doc = cartitem.data()
                            
                            print("doc\(doc)")
                            
                            favItems.append(doc)
                        
                        
                        
                       
                        }
                    
                        
                    }
                    
                    FavItems.reloadData()
                }
            

    //        print("items 1\(cartitems.count)")

          
            
        }
        
        
      
        



        
        func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            return 100
        }
        
        
    
        
        
   
        
        


    }

    

   

