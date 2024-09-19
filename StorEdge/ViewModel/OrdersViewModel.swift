//
//  OrdersViewModel.swift
//  StorEdge
//
//  Created by admin on 18/09/24.
//

import Foundation

class OrdersViewModel {
    var coordinator: AppCoordinator!
    
    func openMenu() {
        coordinator?.presentMenu()
    }
}
