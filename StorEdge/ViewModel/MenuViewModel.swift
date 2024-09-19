//
//  MenuViewModel.swift
//  StorEdge
//
//  Created by admin on 16/09/24.
//

import Foundation

class MenuViewModel {
    var coordinator: AppCoordinator!
    
    func closeMenu() {
        coordinator.closeMenu()
    }
    
    func navigateToDashboard() {
        coordinator.navigateToDashboard()
    }
    func navigateToProducts() {
        coordinator.navigateToProducts()
    }
    func navigateToOrders() {
        coordinator.navigateToOrders()
    }
    func navigateToSupport() {
        coordinator.navigateToSupport()
    }
    func navigateToCustomers() {
        coordinator.navigateToCustomers()
    }
}
