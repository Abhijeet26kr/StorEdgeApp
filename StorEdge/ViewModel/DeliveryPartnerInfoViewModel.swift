//
//  DeliveryPartnerInfo.swift
//  StorEdge
//
//  Created by admin on 24/09/24.
//

import Foundation

class DeliveryPartnerInfoViewModel {
    var coordinator: AppCoordinator!
    let deliveryPartner: DeliveryPartner
    
    init(deliveryPartner: DeliveryPartner) {
        self.deliveryPartner = deliveryPartner
    }
    
    func openMenu() {
        coordinator.presentMenu()
    }
}
