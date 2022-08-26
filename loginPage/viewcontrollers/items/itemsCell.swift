//
//  itemsCell.swift
//  loginPage
//
//  Created by Obaida on 8/27/22.
//

import UIKit

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
    
    @IBOutlet weak var ItemDesc: UILabel!
    
    @IBOutlet weak var ItemPrice: UILabel!
    
    
    func setdata(_ items : Items)  {
        CellImage.image=items.Itemimage
        
        ItemName.text=items.Itemname
        ItemDesc.text=items.Itemdesc
        ItemPrice.text=items.Itemdesc
    }
   
    
 


    
    
}
