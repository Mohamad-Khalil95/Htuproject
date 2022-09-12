//
//  itemsCell.swift
//  loginPage
//
//  Created by Obaida on 8/27/22.
//

import UIKit
//
//protocol CartDelegate {
//    func updateCart(cell: itemsCell)
//}


class itemsCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    @IBOutlet weak var CellImage: UIImageView!
    
    @IBOutlet weak var ItemName: UILabel!
    
    @IBOutlet weak var ItemPrice: UILabel!
    
    
    func setdata(_ items : Items)  {
    
        ItemName.text=items.title
       
        ItemPrice.text="\(items.price)$"
        
        
        let url = URL(string: items.image)!

            // Fetch Image Data
            if let data = try? Data(contentsOf: url) {
                // Create Image and Update Image View
                CellImage.image = UIImage(data: data)
            }
        
    }
 
   }
 


    
    

