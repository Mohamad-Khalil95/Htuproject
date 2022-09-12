//
//  favCell.swift
//  loginPage
//
//  Created by Obaida on 9/10/22.
//

import UIKit

class favCell: UITableViewCell {

    @IBOutlet weak var favimg: UIImageView!
    
    @IBOutlet weak var favName: UILabel!
    
   
    @IBOutlet weak var favImg: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func setdata(item:CartItem) {
        favName.text=item.itemName
    
   
        let url = URL(string: item.itemimage)!

            // Fetch Image Data
            if let data = try? Data(contentsOf: url) {
                // Create Image and Update Image View
                favimg.image = UIImage(data: data)
            }
        
        
        
    }
}
