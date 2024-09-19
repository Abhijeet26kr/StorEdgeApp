//
//  DashBoardViewController.swift
//  StorEdge
//
//  Created by admin on 16/09/24.
//

import UIKit

class DashBoardViewController: UIViewController {
    var viewModel = DashBoardViewModel()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func SideMenuButton(_ sender: UIButton) {
        viewModel.openMenu()
    }
}
