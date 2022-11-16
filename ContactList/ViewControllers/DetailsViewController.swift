//
//  DetailsViewController.swift
//  ContactList
//
//  Created by ikorobov on 19.07.2022.
//

import UIKit

class DetailsViewController: UIViewController {
    
    @IBOutlet var phoneNumber: UILabel!
    @IBOutlet var email: UILabel!
    
    var contacts: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = contacts.fullName
        phoneNumber.text = "Phone: \(contacts.phoneNumber)"
        email.text = "eMail: \(contacts.eMail)"
        
    }
}
