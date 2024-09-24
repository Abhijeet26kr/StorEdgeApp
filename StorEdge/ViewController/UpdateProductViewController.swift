//
//  UpdateProductViewController.swift
//  StorEdge
//
//  Created by admin on 24/09/24.
//

import UIKit

class UpdateProductViewController: UIViewController {
    var viewModel: UpdateProductViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func SideMenuButton(_ sender: UIButton) {
        viewModel.openMenu()
    }
}
