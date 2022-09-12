//
//  CatCollection.swift
//  loginPage
//
//  Created by Obaida on 8/17/22.
//

import UIKit



class CatCollection: UICollectionViewController,UICollectionViewDelegateFlowLayout {
    
    
     // vars
    
    var categories :[category]=[]

    @IBOutlet var collection: UICollectionView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
        
        loadcat()
        
        
        
        collectionView.dataSource=self
        collectionView.delegate=self
       

    }

    
    
   

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
       
       return categories.count
        
       
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
      
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CatCell", for: indexPath) as! CatCell
        
       
        cell.setdata(categories[indexPath.row])
        
        
    
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: self.view.frame.width * 0.9, height: self.view.frame.height * 0.3)
    }

    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        performSegue(withIdentifier: "categoriesSegue", sender:categories[indexPath.row])
    }
    
 override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         
        if segue.identifier == "categoriesSegue" {
            
            let vc = segue.destination as! itemstable
            
            vc.trancat1=sender as? category
            
        }
    }
    func loadcat()  {
        downloadCatfromFirebase { (allcat) in
            
           
            self.categories=allcat
            self.collectionView.reloadData()
            
        }
        
        
    }

    

}
