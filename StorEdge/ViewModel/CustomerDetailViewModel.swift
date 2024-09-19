//
//  CustomerDetailViewModel.swift
//  StorEdge
//
//  Created by admin on 19/09/24.
//

import Foundation

class CustomerDetailViewModel {
    let customers: Customer
    var coordinator: AppCoordinator!
    
    init(customers: Customer) {
        self.customers = customers
    }
    
    func openMenu() {
        coordinator.presentMenu()
    }
}
