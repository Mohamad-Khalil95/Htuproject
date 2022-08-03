//
//  signupViewController.swift
//  loginPage
//
//  Created by Obaida on 7/31/22.
//

import UIKit
import FirebaseCore
import FirebaseAuth
import FirebaseFirestore


class signupViewController: UIViewController {

    @IBOutlet weak var Firstname: UITextField!
    
    @IBOutlet weak var LastName: UITextField!
    
    
    @IBOutlet weak var Email: UITextField!
    
    
    @IBOutlet weak var Password: UITextField!
    
    
    @IBOutlet weak var SignUpbtn: UIButton!
    
    
    @IBOutlet weak var Errorlabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        elementstyle()
    }
    
    func elementstyle()  {
        
        Errorlabel.alpha=0
        Utilities.styleTextField(Firstname)
        Utilities.styleTextField(LastName)
        Utilities.styleTextField(Email)
        Utilities.styleTextField(Password)
        Utilities.styleFilledButton(SignUpbtn)
        
    }
    

    func validation () -> String? {
        
        // fill fields check
        if Firstname.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" ||
           LastName.text?.trimmingCharacters(in: .whitespacesAndNewlines) == ""  ||
           Email.text?.trimmingCharacters(in: .whitespacesAndNewlines) == ""  ||
           Password.text?.trimmingCharacters(in: .whitespacesAndNewlines) == ""{
            return "please fill all fields"}
         
         //password validation
        let pass = Password.text?.trimmingCharacters(in: .whitespacesAndNewlines)
        
        if Utilities.isPasswordValid(pass!) == false {
            
            return "Password must be more than 8 characters, with at least one capital, number and special character"
            
        }
    
        return nil
    }
    
    
    
    
    
    
    @IBAction func istapped(_ sender: Any) {
        
        
        let firsName = Firstname.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        let lastName = LastName.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        let email = Email.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        let password = Password.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        
        
        let error = validation()
        if error != nil {
           showerrors(messsage: error!)
            
        }
        else{
            Auth.auth().createUser(withEmail: email, password: password) { (result, er) in
                if er != nil {
                    
                    self.showerrors(messsage: "error creating user")
                }
                else {
                    let db = Firestore.firestore()
                    db.collection("users").addDocument(data: ["FirstName":firsName,"LastName":lastName,"Uid":result!.user.uid]) { (error2) in
                        if error2 != nil{
                            
                            self.showerrors(messsage: "error creat data")
                        }
                    }
                    self.transitionToHome()
                    
                    
                    
                }
                
            }
            
            
        }
    }
    
    func transitionToHome(){
        
        let homeViewController = storyboard?.instantiateViewController(identifier: constants.storyboard.homeviewcontroller) as? homeViewController
        view.window?.rootViewController = homeViewController
        view.window?.makeKeyAndVisible()
        
    }

    
    
    func showerrors(messsage:String) {
        Errorlabel.text?=messsage
        Errorlabel.alpha=1
    }
    
  
}
