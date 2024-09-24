//
//  DeliveryPartnersViewController.swift
//  StorEdge
//
//  Created by admin on 23/09/24.
//

import UIKit

class DeliveryPartnersViewController: UIViewController {
    
    @IBOutlet weak var deliveryPartnersTableView: UITableView!
    
    var viewModel = DeliveryPartnersViewModel()
    
    var deliveryPartners: [DeliveryPartner] = [
        DeliveryPartner(image: "delivery_Partner1", id: "4563292 NY", userName: "4563292", firstName: "Nirmal", lastName: "Azalea", dob: "11.06.90", gender: "Male", phoneNumber: "9975754455", email: "nirmal@gmail.com", city: "New York", address: "Jl. Sekar Wangi 20 A, NY City", noOfDelivery: 2382, rating: "3.7/5", availability: "Available"),
        DeliveryPartner(image: "delivery_Partner2", id: "4563293 NY", userName: "4563293", firstName: "Princy", lastName: "George", dob: "22.09.95", gender: "female", phoneNumber: "7700887766", email: "princy@gmail.com", city: "New York", address: "Jl. Sekar Wangi 30 C, NY City", noOfDelivery: 5611, rating: "4.2/5", availability: "Not Available"),
        DeliveryPartner(image: "delivery_Partner3", id: "4525583 NY", userName: "4525583", firstName: "Howard", lastName: "Wolowitz", dob: "07.12.87", gender: "male", phoneNumber: "77822544", email: "howard@gmail.com", city: "New York", address: "Jl. Sekar Wangi 11 F, NY City", noOfDelivery: 2281, rating: "4.7/5", availability: "Engaged")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let nib = UINib(nibName: "DeliveryPartnersTableViewCell", bundle: nil)
        deliveryPartnersTableView.register(nib, forCellReuseIdentifier: "DeliveryPartnersTableViewCell")
        deliveryPartnersTableView.delegate = self
        deliveryPartnersTableView.dataSource = self
    }
    
    @IBAction func SideMenuTapped(_ sender: UIButton) {
        viewModel.openMenu()
    }
}

extension DeliveryPartnersViewController: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return deliveryPartners.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DeliveryPartnersTableViewCell", for: indexPath) as! DeliveryPartnersTableViewCell
        let deliveryPartner = deliveryPartners[indexPath.section]
        
        cell.partnerImage.image = UIImage(named: deliveryPartner.image)
        cell.noOfDeliveryLabel.text = "No. Delivery  : \(deliveryPartner.noOfDelivery)"
        cell.partnerNameLabel.text = "\(deliveryPartner.firstName) \(deliveryPartner.lastName)"
        cell.partnerIdLabel.text = "Id  : \(deliveryPartner.id)"
        cell.ratingLabel.text = deliveryPartner.rating
        cell.availabilityLabel.text = deliveryPartner.availability
        
        if deliveryPartner.availability == "Available" {
            cell.availabilityLabel.backgroundColor = UIColor.systemGreen
        }else if deliveryPartner.availability == "Engaged" {
            cell.availabilityLabel.backgroundColor = UIColor.orange
        }else {
            cell.availabilityLabel.backgroundColor = UIColor.red
        }
        
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedRow = deliveryPartners[indexPath.section]
        viewModel.naviagteToInfo(for: selectedRow)
    }
    
    
}
