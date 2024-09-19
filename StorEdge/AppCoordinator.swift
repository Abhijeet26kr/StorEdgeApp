//
//  AppCoordinator.swift
//  StorEdge
//
//  Created by admin on 16/09/24.
//

import Foundation
import UIKit

protocol Coordinator {
    var parentCoordinator: Coordinator? {get set}
    var children: [Coordinator] {get set}
    var navigationController: UINavigationController { get set }
    func start()
}
class AppCoordinator : Coordinator {
    var parentCoordinator: Coordinator?
    var children: [Coordinator] = []
    var navigationController: UINavigationController
    private var menuViewController: MenuViewController?
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    func start() {
        navigateToDashboard()
    }
    
    let storyboard = UIStoryboard(name: "Main", bundle: .main)
    
    func navigateToDashboard() {
        
        navigationController.dismiss(animated: true, completion: { [self] in
            //instantiate ViewController
            let dashboardVC = storyboard.instantiateViewController(withIdentifier: "DashBoardViewController") as! DashBoardViewController
            //instantiate ViewModel
            let dashboardViewModel = DashBoardViewModel()
            dashboardViewModel.coordinator = self
            //set the viewModel to ViewController
            dashboardVC.viewModel = dashboardViewModel
            //push it
            navigationController.pushViewController(dashboardVC, animated: true)
        })
        
    }

    func presentMenu() {
        if menuViewController == nil {
            menuViewController = storyboard.instantiateViewController(withIdentifier: "MenuViewControllervc") as? MenuViewController
            let menuViewModel = MenuViewModel.init()
            menuViewModel.coordinator = self
            menuViewController?.viewModel = menuViewModel
        }
        guard let menuVC = menuViewController else {return}
        menuVC.modalPresentationStyle = .overFullScreen
        menuVC.modalTransitionStyle = .crossDissolve
        navigationController.present(menuVC, animated: true, completion: nil)
    }
    func closeMenu() {
        navigationController.dismiss(animated: false, completion: nil)
    }
    
    func navigateToProducts() {
        navigationController.dismiss(animated: true, completion: { [self] in
            let productVC = storyboard.instantiateViewController(withIdentifier: "ProductViewController") as! ProductViewController
            let productViewModel = ProductViewModel()
            productViewModel.coordinator = self
            productVC.viewModel = productViewModel
            navigationController.pushViewController(productVC, animated: true)
        })
    }
    
    func navigateToOrders() {
        navigationController.dismiss(animated: true, completion: { [self] in
            let orderVC = storyboard.instantiateViewController(withIdentifier: "OrderViewController") as! OrdersViewController
            let orderViewModel = OrdersViewModel()
            orderViewModel.coordinator = self
            orderVC.viewModel = orderViewModel
            navigationController.pushViewController(orderVC, animated: true)
        })
    }
    
    func navigateToCustomers() {
        navigationController.dismiss(animated: true, completion: { [self] in
            let customersVC = storyboard.instantiateViewController(withIdentifier: "CustomersViewController") as! CustomersViewController
            let customersViewModel = CustomersViewModel()
            customersViewModel.coordinator = self
            customersVC.viewModel = customersViewModel
            navigationController.pushViewController(customersVC, animated: true)
        })
    }
    func navigateToCustomerDetails(customers: Customer) {
        navigationController.dismiss(animated: true, completion: { [self] in
            let customerDetailsVC = storyboard.instantiateViewController(withIdentifier: "CustomerDetailViewController") as! CustomerDetailViewController
            let customerDetailVM = CustomerDetailViewModel(customers: customers)
            customerDetailVM.coordinator = self
            customerDetailsVC.viewModel = customerDetailVM
            navigationController.pushViewController(customerDetailsVC, animated: true)
        })
    }
    
    func navigateToSupport() {
        navigationController.dismiss(animated: true, completion: { [self] in
            let supportVC = storyboard.instantiateViewController(withIdentifier: "SupportViewController") as! SupportViewController
            let supportViewModel = SupportViewModel()
            supportViewModel.coordinator = self
            supportVC.viewModel = supportViewModel
            navigationController.pushViewController(supportVC, animated: true)
        })
    }
}
