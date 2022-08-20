//
//  homeViewController.swift
//  loginPage
//
//  Created by Obaida on 7/31/22.
//

import UIKit

class homeViewController: UIViewController ,UICollectionViewDelegate,UICollectionViewDataSource{
    
    
    
    struct sections {
        var image : UIImage
        var name : String
    }
    
    
    var section=[sections]()
    
    
    
    
    
    

    @IBOutlet weak var collectionView: UICollectionView!
    
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.dataSource=self
        collectionView.delegate=self
        

        section.append(sections(image:UIImage(named: "tree2")! , name: "Clothes"))
        // Do any additional setup after loading the view.
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {

        return 10

       
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
        
    
        return cell
        
    }
    

  
    

}
