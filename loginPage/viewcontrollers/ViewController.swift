//
//  ViewController.swift
//  loginPage
//
//  Created by Obaida on 7/31/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var SignUpbtn: UIButton!
    
    
    
    @IBOutlet weak var Loginbtn: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       elementStyle()
    }
    func elementStyle()  {
        Utilities.styleFilledButton(SignUpbtn)
        Utilities.styleHollowButton(Loginbtn)
    }


}

