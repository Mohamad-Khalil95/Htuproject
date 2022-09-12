////
////  ListOfProduct.swift
////  loginPage
////
////  Created by Obaida on 8/22/22.
////
//
//import UIKit
//import FirebaseFirestore
//import Alamofire
//import SwiftyJSON
//
//
//
//class ListOfProduct: UIViewController,UITableViewDelegate,UITableViewDataSource {
//
//    var Item=[Items]()
//    @IBOutlet weak var listOfItems: UITableView!
//
//
//
//    var trancat :category?
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        print("we have\(self.Item)")
//        getAPICall(Item: trancat!.name)
//
//
//////
////        listOfItems.dataSource=self
////        listOfItems.delegate=self
//////
////    loaditems()
////
////        print("number of items\(Item.count)")
////
//        //createitem()
//
//
//
//
//
//
//        // Do any additional setup after loading the view.
//    }
//
//
//
//
//    func ContactsAPICalling(items:String){
//
//        Alamofire.request("https://fakestoreapi.com/products/category/\(items)", method: .get, encoding: JSONEncoding.default, headers: nil).responseJSON { (contactsResponse) in
//
//            let result = contactsResponse.result
//            let contactsJSON = JSON(result.value!)["category"]
//
//            print(contactsJSON)
//
//            for i in 0..<contactsJSON.count {
//
//                let allitems=Items(contactsJSON[i])
//
//                self.Item.append(allitems)
//
//
//            }
//            self.listOfItems.reloadData()
//
//
//        }
//
//    }
//
//
//
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return Item.count
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "itemscell") as! itemsCell
//        cell.setdata(Item[indexPath.row])
//       return cell
//    }
//
//
//
//    @IBOutlet weak var navitem: UINavigationItem!
//
//    /*
//    // MARK: - Navigation
//
//    // In a storyboard-based application, you will often want to do a little preparation before navigation
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        // Get the new view controller using segue.destination.
//        // Pass the selected object to the new view controller.
//    }
//    */
////    func createitem() {
////        let tshirts=Items("elec", trancat!.id, "ldl", "dsadasad", "ssadafd")
////
////
////
////
////        let arrOfitems = [tshirts]
////
////
////        for item  in arrOfitems {
////            saveItems(item)
////        }
////    }
////
////
////
//
//
//
//
//
//
//
////
////    func loaditems()  {
////        downloadItemsfromFirebase(trancat!.id) { (allitems) in
////            self.Item=allitems
////
////            print("number of items\(allitems.count)")
////            print("the number of items iside \(self.Item.count)")
////
////
////        }
////        self.listOfItems.reloadData()
////    }
////
////
////
//
//
//
//
//
//
//
//
//
//
//    }
//
//
//
//
//
//
//
//
//
//
//
//
//
