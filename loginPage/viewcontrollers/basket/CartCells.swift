//
//  CartCells.swift
//  loginPage
//
//  Created by Obaida on 9/5/22.
//

import UIKit

class CartCells: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
      
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

                // Configure the view for the selected state
    }

    @IBOutlet weak var CIName: UILabel!
    
    @IBOutlet weak var CIImage: UIImageView!
    
    @IBOutlet weak var CIPrice: UILabel!
    
    

    func setdata(item:CartItem) {
        CIName.text=item.itemName
    
        CIPrice.text="\(item.itemPrice)$"
        let url = URL(string: item.itemimage)!

            // Fetch Image Data
            if let data = try? Data(contentsOf: url) {
                // Create Image and Update Image View
                CIImage.image = UIImage(data: data)
            }
        
        
        
    }

  
}
