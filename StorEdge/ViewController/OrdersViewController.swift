//
//  OrdersViewController.swift
//  StorEdge
//
//  Created by admin on 18/09/24.
//

import UIKit

class OrdersViewController: UIViewController {
    
    @IBOutlet weak var topTabBar: UIView!
    
    @IBOutlet weak var contentView: UIView!
    var viewModel = OrdersViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        goToConfirm()
        // Do any additional setup after loading the view.
    }
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .darkContent
    }
    func goToConfirm() {
        guard let confirm = self.storyboard?.instantiateViewController(withIdentifier: "ConfirmViewController") as? ConfirmViewController else {return}
        contentView.addSubview(confirm.view)
        confirm.didMove(toParent: self)
    }

    @IBAction func SideMenuButton(_ sender: UIButton) {
        viewModel.openMenu()
    }
    
    @IBAction func onClickTabBar(_ sender: UIButton) {
        let tag = sender.tag
//        viewModel.tabBarSelection(tag: tag)
        if tag == 1 {
            goToConfirm()
        }else if tag == 2 {
            guard let prepare = self.storyboard?.instantiateViewController(withIdentifier: "PrepareViewController") as? PrepareViewController else {return}
            contentView.addSubview(prepare.view)
            prepare.didMove(toParent: self)
        }else if tag == 3 {
            guard let deliver = self.storyboard?.instantiateViewController(withIdentifier: "DeliverViewController") as? DeliverViewController else {return}
            contentView.addSubview(deliver.view)
            deliver.didMove(toParent: self)
        }else if tag == 4 {
            guard let completed = self.storyboard?.instantiateViewController(withIdentifier: "CompletedViewController") as? CompletedViewController else {return}
            contentView.addSubview(completed.view)
            completed.didMove(toParent: self)
        }else {
            guard let canceled = self.storyboard?.instantiateViewController(withIdentifier: "CanceledViewController") as? CanceledViewController else {return}
            contentView.addSubview(canceled.view)
            canceled.didMove(toParent: self)
        }
    }
    
    
}
