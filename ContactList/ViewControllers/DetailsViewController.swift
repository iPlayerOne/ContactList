//
//  DetailsViewController.swift
//  ContactList
//
//  Created by ikorobov on 19.07.2022.
//

import UIKit

class DetailsViewController: UIViewController {
    
    @IBOutlet var name: UILabel!
    @IBOutlet var surname: UILabel!
    
    @IBOutlet var phoneNumber: UILabel!
    @IBOutlet var email: UILabel!
    
    var contacts: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        name.text = contacts.name
        surname.text = contacts.surname
        phoneNumber.text = contacts.phoneNumber
        email.text = contacts.eMail
        
    }
}
