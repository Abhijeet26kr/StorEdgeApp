//
//  CustomersViewController.swift
//  StorEdge
//
//  Created by admin on 19/09/24.
//

import UIKit

class CustomersViewController: UIViewController {
    @IBOutlet weak var customersTableView: UITableView!
    
    var viewModel = CustomersViewModel()
    
    var customers: [Customer] = [
        Customer(image: "customerImage", firstName: "John", lastName: "Doe", dateOfBirth: "06.06.1989", gender: "Male", phoneNumber: "(212) 555-1234", email: "jhdoe13@gmail.com", address: "4567 Apple St, Apartment 2A, Brooklyn, NY 11211", customerSince: "09.11.2022", totalOrders: 134, canceledOrders: 2, preferredPayment: "Apple Pay"),
        Customer(image: "customerImage", firstName: "Jane", lastName: "Smith", dateOfBirth: "12.03.1992", gender: "Female", phoneNumber: "(212) 555-5678", email: "janesmith@gmail.com", address: "1234 Orange Ave, Apt 5, New York, NY 10001", customerSince: "01.01.2021", totalOrders: 120, canceledOrders: 1, preferredPayment: "Credit Card"),
        Customer(image: "customerImage", firstName: "Sam", lastName: "Wilson", dateOfBirth: "16.09.1987", gender: "Male", phoneNumber: "(212) 555-9012", email: "samwilson13@gmail.com", address: "4567 Apple St, Apartment 3A, Brooklyn, NY 11211", customerSince: "09.11.2020", totalOrders: 101, canceledOrders: 4, preferredPayment: "Apple Pay"),
        Customer(image: "customerImage", firstName: "Emily", lastName: "Jones", dateOfBirth: "12.03.1995", gender: "Female", phoneNumber: "(212) 555-3456", email: "janesmith@gmail.com", address: "1234 Orange Ave, Apt 2, New York, NY 10001", customerSince: "01.01.2023", totalOrders: 120, canceledOrders: 3, preferredPayment: "Credit Card"),
    ]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let nib = UINib(nibName: "CustomersTableViewCell", bundle: nil)
        customersTableView.register(nib, forCellReuseIdentifier: "CustomersTableViewCell")
        customersTableView.delegate = self
        customersTableView.dataSource = self
        // Do any additional setup after loading the view.
    }
    
    @IBAction func SideMenuButton(_ sender: UIButton) {
        viewModel.openMenu()
    }
    
}
extension CustomersViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return customers.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = customersTableView.dequeueReusableCell(withIdentifier: "CustomersTableViewCell", for: indexPath) as! CustomersTableViewCell
        let customer = customers[indexPath.row]
        
        cell.customerNameLabel.text = "\(customer.firstName) \(customer.lastName)"
        cell.phoneNumberLabel.text = customer.phoneNumber
        cell.viewDetails.tag = indexPath.row
        cell.viewDetails.addTarget(self, action: #selector(viewButtonTapped(_ :)), for: .touchUpInside)
        return cell
    }
    @objc func viewButtonTapped(_ sender: UIButton){
        let customer = customers[sender.tag]
        viewModel.viewDetails(for: customer)
    }
    
    
}
