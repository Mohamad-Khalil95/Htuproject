//
//  Basket.swift
//  loginPage
//
//  Created by Obaida on 9/4/22.
//

import UIKit
import FirebaseAuth
import FirebaseFirestore



class Basket: UIViewController ,UITableViewDataSource,UITableViewDelegate{
    
    var cartitems = [CartItem]()
    var count=0.00
    
    
    
    @IBOutlet weak var CartItems: UITableView!

    @IBOutlet weak var Total: UILabel!
    
    
    
    
    
 

    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print(cartitems.count)
        
        
       return cartitems.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cartItems", for: indexPath) as! CartCells
       //cell.CIName.text=cartitems[indexPath.row].itemName
        
        cell.setdata(item:cartitems[indexPath.row])
        
        
        return cell
    }
    

    

    
   
    
    


    
    
    
    
    
    
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
      
       
        
    
//         fetchcartbyUSer()
       
    
        
    

        CartItems.delegate=self
        CartItems.dataSource=self
    

        // Do any additional setup after loading the view.
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        cartitems.removeAll()
        fetchcartbyUSer()
    }
    
    
    let currentuser=Auth.auth().currentUser?.uid
 func fetchcartbyUSer(){
     
        
        
       

        let db = Firestore.firestore()
    db.collection("userCart").whereField("uiid", isEqualTo:currentuser! )
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
                        
                        cartitems.append(doc)
                    
                    
                    
                        print("items \(cartitems.count)")
                        for i in cartitems {
                            count=count+i.itemPrice
                           
                        }
                        let total :String=String(format: "%.2f",count)
                        
                        Total.text="Total : \(total)$"
                    }
                
                    
                }
                
                CartItems.reloadData()
            }
        

//        print("items 1\(cartitems.count)")

      
        
    }
    
    
  
    



    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    
    @IBAction func checkOutBtn(_ sender: UIButton) {
        
       // performSegue(withIdentifier: "checkOutSegue", sender:count)
        
    
        
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            
      
        let destinationVC = segue.destination as! checkOut
        destinationVC.Total = count
    }
  
    


}
