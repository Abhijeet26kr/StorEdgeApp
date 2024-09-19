//
//  CustomersTableViewCell.swift
//  StorEdge
//
//  Created by admin on 19/09/24.
//

import UIKit

class CustomersTableViewCell: UITableViewCell {
    
    @IBOutlet weak var customerNameLabel: UILabel!
    @IBOutlet weak var phoneNumberLabel: UILabel!
    @IBOutlet weak var viewDetails: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
}
