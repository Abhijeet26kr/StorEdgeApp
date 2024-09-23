//
//  SupportViewController.swift
//  StorEdge
//
//  Created by admin on 19/09/24.
//

import UIKit

class SupportViewController: UIViewController {
    var viewModel = SupportViewModel()
    
    @IBOutlet weak var emailLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        emailLabel.text = "support@storedgeapp.com"
        emailLabel.isUserInteractionEnabled = true
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(emailLabelTapped))
        emailLabel.addGestureRecognizer(tapGesture)
        // Do any additional setup after loading the view.
    }
    @objc func emailLabelTapped() {
        
        let email = "support@storedgeapp.com"
        
        if let emailURL = URL(string: "mailto:\(email)") {
            if UIApplication.shared.canOpenURL(emailURL) {
                UIApplication.shared.open(emailURL, options: [:], completionHandler: nil)
            }else {
                // Handle error, e.g show an alert
                print("Can't open mail app.")
            }
        }
    }
    
    @IBAction func SideMenuButton(_ sender: UIButton) {
        viewModel.openMenu()
    }
}
