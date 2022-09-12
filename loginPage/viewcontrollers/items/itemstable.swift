//
//  itemstable.swift
//  loginPage
//
//  Created by Obaida on 8/30/22.
//

import UIKit
import FirebaseFirestore
import Alamofire
import SwiftyJSON


class itemstable: UITableViewController {
    var trancat1 :category?
    
    @IBOutlet var itemtable: UITableView!
    
    var Item=[Items]()
   
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title=String(trancat1!.name)
        
        itemtable.delegate=self
        itemtable.dataSource=self
        print("number of items \(Item.count)")
        
        print(trancat1!.name)
        ContactsAPICalling(items: trancat1!.name)

       
    }
    
//    override func viewWillAppear(_ animated: Bool) {
//        Item.removeAll()
//        ContactsAPICalling(items: trancat1!.name)
//    }


    
    

 


    func ContactsAPICalling(items:String){
        
        let urlString1="https://fakestoreapi.com/products/category/\(trancat1!.name)"
        
        let urlString = urlString1.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)


        
        Alamofire.request(urlString as! URLConvertible, method: .get, encoding: JSONEncoding.default, headers: nil).responseJSON { (contactsResponse) in
            
            let result = contactsResponse.result
            let contactsJSON = JSON(result.value!)
            
            
            
            print(contactsJSON[0])
            
            for i in 0..<contactsJSON.count {
                
                let allitems=Items(contactsJSON[i])
                print("nuber of items inside \(allitems.title)")
                self.Item.append(allitems)
                
              
            }
            self.tableView.reloadData()
           
       
        }
        
    }
    // MARK: - Table view data source

//    override func numberOfSections(in tableView: UITableView) -> Int {
//        // #warning Incomplete implementation, return the number of sections
//        return 0
//    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return Item.count
    }

   
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "itemscell") as! itemsCell
             //  cell.setdata(Item[indexPath.row])
        
        cell.setdata(Item[indexPath.row])
              return cell
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        performSegue(withIdentifier: "ItemDetails", sender:Item[indexPath.row])
        
        
        
    }
       
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            
           if segue.identifier == "ItemDetails" {
               
               let vc = segue.destination as! itemDetails
               
               vc.transItem=sender as? Items
            
               
           }
       }
    
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }

}

