//
//  SupportViewModel.swift
//  StorEdge
//
//  Created by admin on 19/09/24.
//

import Foundation

class SupportViewModel {
    var coordinator: AppCoordinator!
    
    func openMenu() {
        coordinator?.presentMenu()
    }
}
