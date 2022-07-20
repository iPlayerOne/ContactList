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
        // Когда узнал что сиги в ТабБарКонтроллере не настоящие 😣
        
        guard let contactsVC = self.viewControllers?.first as? ContactsTableViewController else {return}
        contactsVC.contacts = contacts
        guard let expandedVC = self.viewControllers?.last as? ExpandedTableViewController else { return }
        expandedVC.contacts = contacts
        
    }
}

