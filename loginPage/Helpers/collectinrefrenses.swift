//
//  collectinrefrenses.swift
//  loginPage
//
//  Created by Obaida on 8/11/22.
//

import Foundation
 import FirebaseFirestore


enum firebaserefrences:String {
    case user
    case category
    case items
    case basket
}
func firebaseRefrences(_ coleectionRefrences:firebaserefrences) -> CollectionReference {
    
    return Firestore.firestore().collection(coleectionRefrences.rawValue)
    
    
}
