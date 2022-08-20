//
//  loginViewController.swift
//  loginPage
//
//  Created by Obaida on 7/31/22.
//

import UIKit
import FirebaseAuth


class loginViewController: UIViewController {

    @IBOutlet weak var Email: UITextField!
    
    
    @IBOutlet weak var Password: UITextField!
    
    
    @IBOutlet weak var Loginbtn: UIButton!
    
    
    
    @IBOutlet weak var Errorlabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        elementstyle()
    }
    func elementstyle() {
        Errorlabel.alpha=0
        
        Utilities.styleTextField(Email)
        
        Utilities.styleTextField(Password)
        
            }
    
    
    
    
    
    
    

    
    @IBAction func loginTaped(_ sender: Any) {
        
        Auth.auth().signIn(withEmail: Email.text!, password: Password.text!) { (result, error) in
            if error != nil{
                self.Errorlabel.text = error!.localizedDescription
                self.Errorlabel.alpha=1
            }
            else{
            transitionToHome()
                
            }
            
            
        }
        
        
        
        
       
        
        
        
   
    
        func transitionToHome(){
            
            let homeViewController = storyboard?.instantiateViewController(identifier: constants.storyboard.homeviewcontroller) as? CatCollection
            view.window?.rootViewController = homeViewController
            view.window?.makeKeyAndVisible()
            
        }
    }
    
    
    
    
    


}
