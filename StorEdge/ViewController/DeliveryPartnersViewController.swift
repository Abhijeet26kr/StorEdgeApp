//
//  DeliveryPartnersViewController.swift
//  StorEdge
//
//  Created by admin on 23/09/24.
//

import UIKit

class DeliveryPartnersViewController: UIViewController {
    
    var viewModel = DeliveryPartnersViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func SideMenuTapped(_ sender: UIButton) {
        viewModel.openMenu()
    }
}
