//
//  apifile.swift
//  loginPage
//
//  Created by Obaida on 8/27/22.
//

import Foundation
func callAPI(){
    guard let url = URL(string: "https://fakestoreapi.com/products") else{
        return
    }


    let task = URLSession.shared.dataTask(with: url){
        data, response, error in
        
        if let data = data, let string = String(data: data, encoding: .utf8){
            print(string)
        }
    }

    task.resume()
}
