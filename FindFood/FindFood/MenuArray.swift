//
//  MenuArray.swift
//  FindFood
//
//  Created by Gibran Shevaldo on 25/03/25.
//

import Foundation

struct Menu: Hashable{
    var name: String
    var ImageName: String
    var Description: String
    var price: Int
}

struct MenuArray {
    static let menu: [Menu] = [
        .init(name: "Menu A", ImageName: "exDummy", Description: "abcd", price: 10),
        .init(name: "Menu B", ImageName: "exDummy", Description: "abcd", price: 10),
        .init(name: "Menu C", ImageName: "exDummy", Description: "abcd", price: 10),
        .init(name: "Menu D", ImageName: "exDummy", Description: "abcd", price: 10),
        .init(name: "Menu E", ImageName: "exDummy", Description: "abcd", price: 10)
    ]
}
