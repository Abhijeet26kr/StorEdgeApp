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
        coordinator.presentMenu()
    }
    
//    func tabBarSelection(tag: Int) {
//        switch tag {
//        case 1:
//            coordinator.showConfirmView()
//        case 2:
//            coordinator.showPrepareView()
//        case 3:
//            coordinator.showDeliverView()
//        case 4:
//            coordinator.showCompletedView()
//        case 5:
//            coordinator.showCanceledView()
//        default:
//            break
//        }
//    }
}
