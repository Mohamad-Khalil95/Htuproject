//
//  ListOfProduct.swift
//  loginPage
//
//  Created by Obaida on 8/22/22.
//

import UIKit
import FirebaseFirestore



class ListOfProduct: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    var Item:[Items]=[]
    
    
    
    var trancat :category?
    override func viewDidLoad() {
        super.viewDidLoad()
        callAPI()
//
//        listOfItems.dataSource=self
//        listOfItems.delegate=self
//
//        navitem.title=trancat!.name
//        print("the number of items iside \(Item.count)")
//
//        loaditems()

        //print("number of items\(Item.count)")
        
        //createitem()
        
        
       
        
        
        
        // Do any additional setup after loading the view.
    }
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Item.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "itemscell") as! itemsCell
        cell.setdata(Item[indexPath.row])
       return cell
    }
    
  
    
    @IBOutlet weak var navitem: UINavigationItem!
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    func createitem() {
        let tshirts=Items("thirt", trancat!.id, "ssdsad", "dsadasad", "ssadafd")
    
    
    
    
        let arrOfitems = [tshirts]
    
    
        for item  in arrOfitems {
            saveItems(item)
        }
    }
  
    
  

  
   
    
   
    @IBOutlet weak var listOfItems: UITableView!
    

    func loaditems()  {
        downloadItemsfromFirebase(trancat!.id) { (allitems) in
            self.Item=allitems
            
            print("number of items\(allitems.count)")
            print("the number of items iside \(self.Item.count)")
            
            self.listOfItems.reloadData()
        }
    }

    
    
    
   
    
    
    
    
    
   
    
    
    }

   
    
    
    
    
   
  

   
        
        
    
