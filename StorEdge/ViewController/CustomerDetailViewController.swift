//
//  CustomerDetailViewController.swift
//  StorEdge
//
//  Created by admin on 19/09/24.
//

import UIKit

class CustomerDetailViewController: UIViewController {
    var viewModel: CustomerDetailViewModel!
    
    @IBOutlet weak var customerImage: UIImageView!
    @IBOutlet weak var firstNameLabel: UILabel!
    @IBOutlet weak var lastNameLabel: UILabel!
    @IBOutlet weak var dateOfBirthLabel: UILabel!
    @IBOutlet weak var genderLabel: UILabel!
    @IBOutlet weak var phoneNumberLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var customerSinceLabel: UILabel!
    @IBOutlet weak var totalOrdersLabel: UILabel!
    @IBOutlet weak var ordersCancledLabel: UILabel!
    @IBOutlet weak var preferredPaymentLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        firstNameLabel.text = viewModel.customers.firstName
        lastNameLabel.text = viewModel.customers.lastName
        dateOfBirthLabel.text = viewModel.customers.dateOfBirth
        genderLabel.text = viewModel.customers.gender
        phoneNumberLabel.text = viewModel.customers.phoneNumber
        emailLabel.text = viewModel.customers.email
        addressLabel.text = viewModel.customers.address
        customerSinceLabel.text = viewModel.customers.customerSince
        totalOrdersLabel.text = "\(viewModel.customers.totalOrders)"
        ordersCancledLabel.text = "\(viewModel.customers.canceledOrders)"
        preferredPaymentLabel.text = viewModel.customers.preferredPayment
    }

    @IBAction func SideMenuButton(_ sender: UIButton) {
        viewModel.openMenu()
    }
}
