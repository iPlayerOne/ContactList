//
//  ExpandedTableViewController.swift
//  ContactList
//
//  Created by ikorobov on 19.07.2022.
//

import UIKit

class ExpandedTableViewController: UITableViewController {
    
    var contacts: [Person]!
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return contacts.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 2
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int ) -> String? {
        
        "\(contacts[section].name ?? "Ivan") \(contacts[section].surname ?? "Ivanovich")"
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "expandcontacts", for: indexPath)
        let contact = contacts[indexPath.section]
        var content = cell.defaultContentConfiguration()
        switch indexPath.row {
            case 0:
                content.image = UIImage.init(systemName: "phone")
                content.text = contact.phoneNumber
            default:
                content.image = UIImage.init(systemName: "at")
                content.text = contact.eMail
        }
        cell.contentConfiguration = content
        return cell
    }
}
