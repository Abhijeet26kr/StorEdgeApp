//
//  OrdersViewController.swift
//  StorEdge
//
//  Created by admin on 18/09/24.
//

import UIKit

class OrdersViewController: UIViewController {
    
    var viewModel = OrdersViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func SideMenuButton(_ sender: UIButton) {
        viewModel.openMenu()
    }
}
