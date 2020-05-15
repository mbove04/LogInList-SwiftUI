//
//  Transaction.swift
//  Wallet-SwiftUI
//
//  Created by Sailor on 14/05/2020.
//  Copyright © 2020 com.sailor. All rights reserved.
//

import Foundation

struct Transaction: Identifiable{
    var id = UUID()
    var seller: String
    var amount: String
    var date : String
    var image: String
}

let transactions = [
    
    Transaction(seller: "Carrefour", amount: "109.24€", date: "05/05/2020",image:"carrefour"),
    Transaction(seller: "Apple", amount: "1227.00€", date: "09/04/2020",image:"apple"),
    Transaction(seller: "HBO", amount: "7.99€", date: "07/05/2020",image:"hbo"),
    Transaction(seller: "Adidas", amount: "43.99€", date: "07/06/2020",image:"adidas"),
    Transaction(seller: "Mediamarkt", amount: "322.99€", date: "07/01/2020",image:"mediamarkt"),
    Transaction(seller: "Decathlon", amount: "77.00€", date: "09/05/2020",image:"decathlon"),
    Transaction(seller: "Orange", amount: "29.99€", date: "17/05/2020",image:"orange"),
    Transaction(seller: "El Corte Ingles", amount: "56.66€", date: "07/05/2020",image:"corteingles"),
    Transaction(seller: "Inside", amount: "29.15€", date: "07/06/2020", image:"inside"),
    Transaction(seller: "Amazon", amount: "13.99€", date: "06/03/2020",image:"amazonlargelogo"),
    Transaction(seller: "Nike", amount: "50.88€", date: "08/06/2020",image:"nike")
]
