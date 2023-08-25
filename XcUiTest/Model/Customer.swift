//
//  Customer.swift
//  XcUiTest
//
//  Created by Paulo H.M. on 25/08/23.
//

import Foundation

struct Customer : Identifiable, Codable{
    var id: String
    var profileImage: String
    var name: String

    
#if DEBUG
    static let example = Customer(id: "example", profileImage: "pencil", name: "Name Surname", balance: 99999, isOverdue: true)
    static let allCustomers = [Customer(id: "1", profileImage: "pencil", name: "Uno Anonimo", balance: 123, isOverdue: true), Customer(id: "2", profileImage: "star", name: "Due Betiucci", balance: 234, isOverdue: false), Customer(id: "3", profileImage: "applelogo", name: "Trois Fromage", balance: 345, isOverdue: true)]
#endif
}
