//
//  Person.swift
//  ContactList
//
//  Created by ikorobov on 19.07.2022.
//

struct Person {
    let name: String?
    let surname: String?
    let phoneNumber: String?
    let eMail: String?
    
    static func getPersonList() -> [Person] {
        let contactData = DataStore()
        
        let names = contactData.names.shuffled()
        let surnames = contactData.surnames.shuffled()
        let numbers = contactData.phoneNumbers.shuffled()
        let mails = contactData.eMails.shuffled()
        
        var contactList: [Person] = []
        var index = 0
        
        for _ in numbers {
            while index <= contactData.phoneNumbers.count - 1 {
                contactList += [
                    Person(
                        name: names[index],
                        surname: surnames[index],
                        phoneNumber: numbers[index],
                        eMail: mails[index]
                    )
                ]
                
                index += 1
            }
        }
        return contactList
    }
}



