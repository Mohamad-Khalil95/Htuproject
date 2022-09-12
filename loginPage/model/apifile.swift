//
//  apifile.swift
//  loginPage
//
//  Created by Obaida on 8/27/22.
//

import Foundation
import SwiftyJSON

import Alamofire
func getAPICall(Item:String) {
Alamofire.request("https://fakestoreapi.com/products/category/\(Item)").responseJSON { response in
//print(response.request)
print(response.result)
if let json = response.result.value {
print(json)
}
}
}


