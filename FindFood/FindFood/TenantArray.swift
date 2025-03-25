//
//  TenantArray.swift
//  FindFood
//
//  Created by Gibran Shevaldo on 25/03/25.
//

import Foundation

struct Tenant: Hashable{
    var name: String
    var ImageName: String
    var Description: String
    var Contact: String
    var avgWaitTime: Int
    var queueTime: Int
    var minPrice: Int
    var maxPrice: Int
}

struct TenantArray {
    static let tenant: [Tenant] = [
        .init(name: "Tenant A", ImageName: "exDummy", Description: "abcd", Contact: "0812", avgWaitTime: 15, queueTime: 5, minPrice: 10, maxPrice: 15),
        .init(name: "Tenant B", ImageName: "exDummy", Description: "abcd", Contact: "0812", avgWaitTime: 15, queueTime: 5, minPrice: 10, maxPrice: 15),
        .init(name: "Tenant C", ImageName: "exDummy", Description: "abcd", Contact: "0812", avgWaitTime: 15, queueTime: 5, minPrice: 10, maxPrice: 15),
        .init(name: "Tenant D", ImageName: "exDummy", Description: "abcd", Contact: "0812", avgWaitTime: 15, queueTime: 5, minPrice: 10, maxPrice: 15),
        .init(name: "Tenant E", ImageName: "exDummy", Description: "abcd", Contact: "0812", avgWaitTime: 15, queueTime: 5, minPrice: 10, maxPrice: 15)
    ]
}

