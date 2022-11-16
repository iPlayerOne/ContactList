//
//  Person.swift
//  ContactList
//
//  Created by ikorobov on 19.07.2022.
//

struct Person {
    let name: String
    let surname: String
    let phoneNumber: String
    let eMail: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
}

extension Person {
    
    static func getPersonList() -> [Person] {
        
        var contactList: [Person] = []
        
        let names = DataStore.shared.names.shuffled()
        let surnames = DataStore.shared.surnames.shuffled()
        let numbers = DataStore.shared.phoneNumbers.shuffled()
        let mails = DataStore.shared.eMails.shuffled()
        
        let indexCount = min(
            names.count,
            surnames.count,
            numbers.count,
            mails.count
        )
        
        for index in 0..<indexCount {
            let person = Person(
                name: names[index],
                surname: surnames[index],
                phoneNumber: numbers[index],
                eMail: mails[index]
            )
            contactList.append(person)
        }
        
        return contactList
    }
}

enum Contacts: String {
    case phone = "phone"
    case email = "tray"
}

    


