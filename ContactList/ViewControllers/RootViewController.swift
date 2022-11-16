//
//  RootViewController.swift
//  ContactList
//
//  Created by ikorobov on 20.07.2022.
//

import UIKit

class RootViewController: UITabBarController {
    
    var contacts = Person.getPersonList()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupVC()
    }
    
    private func setupVC() {
        guard let contactsVC = self.viewControllers?.first as? ContactsTableViewController else {return}
        guard let expandedVC = self.viewControllers?.last as? ExpandedTableViewController else { return }
        
        let contacts = Person.getPersonList()
        contactsVC.contacts = contacts
        expandedVC.contacts = contacts
    }
}

