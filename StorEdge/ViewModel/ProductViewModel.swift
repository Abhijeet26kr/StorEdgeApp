//
//  ProductViewModel.swift
//  StorEdge
//
//  Created by admin on 17/09/24.
//

import Foundation

class ProductViewModel {
    var coordinator: AppCoordinator!
    
    func openMenu() {
        coordinator.presentMenu()
    }
    func navigateToUpdate() {
        coordinator.navigateToUpdateProduct()
    }
}
