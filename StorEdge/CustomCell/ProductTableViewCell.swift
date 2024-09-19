//
//  ProductTableViewCell.swift
//  StorEdge
//
//  Created by admin on 18/09/24.
//

import UIKit

class ProductTableViewCell: UITableViewCell {
    
    @IBOutlet weak var productImageView: UIImageView!
    @IBOutlet weak var productNameLabel: UILabel!
    @IBOutlet weak var availableQtyLabel: UILabel!
    @IBOutlet weak var lastUpdateLabel: UILabel!
    
   
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBAction func OrderProductButton(_ sender: UIButton) {
    }
    @IBAction func UpdateProductButton(_ sender: UIButton) {
    }
    
}
