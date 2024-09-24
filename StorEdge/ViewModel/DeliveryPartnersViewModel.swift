//
//  DeliveryPartnersViewModel.swift
//  StorEdge
//
//  Created by admin on 23/09/24.
//

import Foundation
class DeliveryPartnersViewModel {
    var coordinator: AppCoordinator!
    
    func openMenu() {
        coordinator.presentMenu()
    }
    func naviagteToInfo(for deliveryPartner: DeliveryPartner) {
        coordinator.navigateToDeliveryPartnersInfo(deliveryPartner: deliveryPartner)
    }
}
