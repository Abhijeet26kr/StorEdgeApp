//
//  DeliveryPartnersInfoViewController.swift
//  StorEdge
//
//  Created by admin on 24/09/24.
//

import UIKit

class DeliveryPartnersInfoViewController: UIViewController {
    
    var viewModel: DeliveryPartnerInfoViewModel!
    
    @IBOutlet weak var idLabel: UILabel!
    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var firstNameLabel: UILabel!
    @IBOutlet weak var lastNameLabel: UILabel!
    @IBOutlet weak var dobLabel: UILabel!
    @IBOutlet weak var genderLabel: UILabel!
    
    @IBOutlet weak var phoneNumberLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        idLabel.text = viewModel.deliveryPartner.id
        userNameLabel.text = viewModel.deliveryPartner.userName
        firstNameLabel.text = viewModel.deliveryPartner.firstName
        lastNameLabel.text = viewModel.deliveryPartner.lastName
        dobLabel.text = viewModel.deliveryPartner.dob
        genderLabel.text = viewModel.deliveryPartner.gender
        
        phoneNumberLabel.text = viewModel.deliveryPartner.phoneNumber
        emailLabel.text = viewModel.deliveryPartner.email
        cityLabel.text = viewModel.deliveryPartner.city
        addressLabel.text = viewModel.deliveryPartner.address
        
    }
    
    @IBAction func SideMenuButton(_ sender: UIButton) {
        viewModel.openMenu()
    }
    
    @IBAction func BackButtonTapped(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
    }
}
