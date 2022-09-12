//
//  itemDetails.swift
//  loginPage
//
//  Created by Obaida on 8/31/22.
//

import UIKit
import FirebaseCore
import FirebaseAuth
import FirebaseFirestore

class itemDetails: UIViewController {
    
    var transItem:Items?
    //var cart = Cart()
    
 
    

    
    
    
    
    
    

    
   

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setdata(transItem!)
        
        
        
        
     

    }
    
    
  
  
  
    @IBOutlet weak var addToCartButton: UIButton!
    
    @IBOutlet weak var Image: UIImageView!

     @IBOutlet weak var Name: UILabel!
   
    
 
    @IBOutlet weak var desc: UILabel!
    
    
    @IBOutlet weak var Price: UILabel!
    
    @IBOutlet weak var addtofav: UIBarButtonItem!
    
  
    
    func setdata(_ item :Items) {
        
        Name.text=item.title
        desc.text=item.description
        Price.text="\(item.price)$"
       
        
        
        
        
        
        
        let url = URL(string: item.image)!

            // Fetch Image Data
            if let data = try? Data(contentsOf: url) {
                // Create Image and Update Image View
                Image.image = UIImage(data: data)
            }
        
        
    }
    
    
    
    func setButton(state: Bool,button:UIButton) {
        button.isSelected = state
    }
    
    
    
let userId =  Auth.auth().currentUser?.uid
    
    
    
                     //Add to Favourite Action
    
    @IBAction func addtoFav(_ sender: Any) {
        
        
        
        
        
        addtofav.image=UIImage(systemName: "star.fill")
        
        
        
        let db = Firestore.firestore()
        db.collection("userFav").addDocument(data: ["uiid":userId!,"Itemname":transItem!.title,"itemprice":transItem!.price,"itemimage":transItem!.image]) { (error2) in
            if error2 != nil{
                
                print("no data added")
                
                
            }

            else{
                let alert = UIAlertController(title: "successfully!", message: "\(self.transItem!.title) added to Faviurate ", preferredStyle: UIAlertController.Style.alert)

                      // add the actions (buttons)
                     alert.addAction(UIAlertAction(title: "done", style: UIAlertAction.Style.default, handler: nil))
                    
                      // show the alert
                      self.present(alert, animated: true, completion: nil)
            }
        
        }
    }
        
        
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
                      // Add To Cart Action
   
    @IBAction func addToCart(_ sender: Any) {
        setButton(state: addToCartButton.isSelected, button: addToCartButton)
        
    
     
        
        let db = Firestore.firestore()
        db.collection("userCart").addDocument(data: ["uiid":userId!,"Itemname":transItem!.title,"itemprice":transItem!.price,"itemimage":transItem!.image]) { (error2) in
            if error2 != nil{
                
                print("no data added")
                
                
            }

            else{
                let alert = UIAlertController(title: "successfully!", message: "\(self.transItem!.title) added to cart ", preferredStyle: UIAlertController.Style.alert)

                      // add the actions (buttons)
                     alert.addAction(UIAlertAction(title: "done", style: UIAlertAction.Style.default, handler: nil))
                    
                      // show the alert
                      self.present(alert, animated: true, completion: nil)
            }
        
        }
    }
        
    

    }
    
    

  




