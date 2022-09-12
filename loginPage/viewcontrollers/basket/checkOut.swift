//
//  checkOut.swift
//  loginPage
//
//  Created by Obaida on 9/7/22.
//

import UIKit
import FirebaseAuth
import FirebaseFirestore

class checkOut: UIViewController {
    
    @IBOutlet weak var SubTotal: UILabel!
    
    @IBOutlet weak var Txes: UILabel!
    
    @IBOutlet weak var Delivery: UILabel!
    
    
    @IBOutlet weak var Totalamount: UILabel!
    
    @IBOutlet weak var SubmitBtn: UIButton!
    
    
    var Total :Double=0.0
    var totalAmount:Double=0.0
    var tax:Double = 0.0
    
    let db = Firestore.firestore()
    let currentuser=Auth.auth().currentUser?.uid
    
    @IBAction func Submit(_ sender: Any) {
        
    }
    
    
    
    
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        SubTotal.text=String(Total)
        
        
        
        
        
        calculate()
        
       
        
        
       

        // Do any additional setup after loading the view.
    }
    
    
    var delivery :Int=0
    func calculate() {
        
        if Total >= 500{
        delivery=0
    }else
        {
            delivery=2
            
        }
        Delivery.text=String(delivery)
        
        
        
        tax=Total * 0.01
        
        Txes.text=String(tax)
        
        totalAmount = tax + Double(delivery) + Total
        
        print("total amount = \(totalAmount)")
        
        
        Totalamount.text=String(totalAmount)
        
        
        
    
}
    
}
