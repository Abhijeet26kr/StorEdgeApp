//
//  DashBoardViewModel.swift
//  StorEdge
//
//  Created by admin on 16/09/24.
//

import Foundation

class DashBoardViewModel {
    var coordinator: AppCoordinator!
    
    func openMenu() {
        coordinator.presentMenu()
    }
}
