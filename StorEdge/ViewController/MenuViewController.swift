//
//  MenuViewController.swift
//  StorEdge
//
//  Created by admin on 16/09/24.
//

import UIKit

class MenuViewController: UIViewController {
    var viewModel = MenuViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func closeMenuButton(_ sender: UIButton) {
        viewModel.closeMenu()
    }
    
    @IBAction func dashboardTapped(_ sender: UIButton) {
        viewModel.navigateToDashboard()
    }
    
    @IBAction func productsTapped(_ sender: UIButton) {
        viewModel.navigateToProducts()
        
    }
    @IBAction func ordersTapped(_ sender: UIButton) {
        viewModel.navigateToOrders()
        
    }
    
    @IBAction func supportTapped(_ sender: UIButton) {
        viewModel.navigateToSupport()
    }
    
    @IBAction func customersTapped(_ sender: UIButton) {
        viewModel.navigateToCustomers()
    }
}
