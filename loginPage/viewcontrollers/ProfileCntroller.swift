//
//  ProfileCntroller.swift
//  loginPage
//
//  Created by Obaida on 8/28/22.
//

import UIKit
import FirebaseAuth

class ProfileCntroller: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        fetchUser()

        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var UserEmail: UILabel!
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
   // let user =Auth.auth().currentUser?.displayName
    
    
    func fetchUser() {
        let userUID = Auth.auth().currentUser?.email
        UserEmail.text=userUID
    }

  
    
}
