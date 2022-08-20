//
//  CatCell.swift
//  loginPage
//
//  Created by Obaida on 8/20/22.
//

import UIKit

class CatCell: UICollectionViewCell {
    @IBOutlet weak var CatImage: UIImageView!

    @IBOutlet weak var CatLabel: UILabel!

    func setdata(_ category : category)  {
        CatImage.image=category.image
        CatLabel.text=category.name
    }
 
}
