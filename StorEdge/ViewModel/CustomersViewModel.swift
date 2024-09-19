//
//  CustomersViewModel.swift
//  StorEdge
//
//  Created by admin on 19/09/24.
//

import Foundation

class CustomersViewModel {
    var coordinator: AppCoordinator!
    
    func openMenu() {
        coordinator.presentMenu()
    }
    func viewDetails(for customer: Customer) {
        coordinator.navigateToCustomerDetails(customers: customer)
    }
}
