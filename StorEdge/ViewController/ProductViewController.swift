//
//  ProductViewController.swift
//  StorEdge
//
//  Created by admin on 16/09/24.
//

import UIKit

class ProductViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var viewModel = ProductViewModel()
    
    @IBOutlet weak var productTableView: UITableView!
    
    var products: [Product] = [
        
        Product(image: "zesty_chicken_wrap", name: "Zesty Chicken Wrap", availableQty: 23, lastUpdate: "12 Jun 23 17:34"),
        Product(image: "BBQ_Bacon_Burger", name: "BBQ Bacon Burger", availableQty: 56, lastUpdate: "12 Jun 23 17:34"),
        Product(image: "Southwest_Salad_Bowl", name: "Southwest Salad Bowl", availableQty: 2, lastUpdate: "12 Jun 23 17:34"),
        Product(image: "Cheesy_Garlic_Breadsticks", name: "Cheesy Garlic Breadsticks", availableQty: 14, lastUpdate: "12 Jun 23 17:34"),
        Product(image: "Grilled_Veggie_Panini", name: "Grilled Veggie Panini", availableQty: 0, lastUpdate: "12 Jun 23 17:34"),
        Product(image: "Crispy_Fish_Tacos", name: "Crispy Fish Tacos", availableQty: 10, lastUpdate: "12 Jun 23 17:34"),
        Product(image: "Bacon_Ranch_Fries", name: "Bacon Ranch Fries", availableQty: 10, lastUpdate: "12 Jun 23 17:34"),
        Product(image: "Chicken_Wings", name: "Chicken Wings", availableQty: 10, lastUpdate: "12 Jun 23 17:34"),
        Product(image: "Veggie_Lover's_Pizza", name: "Veggie Lover's Pizza", availableQty: 0, lastUpdate: "12 Jun 23 17:34")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let nib = UINib(nibName: "ProductTableViewCell", bundle: nil)
        productTableView.register(nib, forCellReuseIdentifier: "ProductTableViewCell")
        productTableView.dataSource = self
        productTableView.delegate = self
    }
    @IBAction func SideMenuButton(_ sender: UIButton) {
        viewModel.openMenu()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return products.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ProductTableViewCell", for: indexPath) as! ProductTableViewCell
        
        let product = products[indexPath.row]
        
        cell.productImageView.image = UIImage(named: product.image)
        cell.productNameLabel.text = product.name
        cell.availableQtyLabel.text = "Available Qty: \(product.availableQty)"
        cell.lastUpdateLabel.text = "Last Update: \(product.lastUpdate)"

        return cell
    }
    
   
}
