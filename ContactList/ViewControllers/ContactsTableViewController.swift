//
//  ContactsTableViewController.swift
//  ContactList
//
//  Created by ikorobov on 19.07.2022.
//

import UIKit

class ContactsTableViewController: UITableViewController {
    
    var contacts: [Person]!
    
    
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        contacts.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contacts", for: indexPath)
        
        let contact = contacts[indexPath.row]
        var content = cell.defaultContentConfiguration()
        content.text = "\(contact.name ?? "Ivan")  \(contact.surname ?? "Ivan")"
        cell.contentConfiguration = content
        return cell
    }
    
    // MARK: - Navigation
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let detailsVC = segue.destination as? DetailsViewController else { return }
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        detailsVC.contacts = contacts[indexPath.row]
    }
    
}
