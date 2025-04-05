//
//  TenantArray.swift
//  FindFood
//
//  Created by Gibran Shevaldo on 25/03/25.
//

import Foundation

struct Tenant: Hashable{
    let menus: [Menu]
    var name: String
    var ImageName: String
    var Description: String
    var Contact: String
    var avgWaitTime: Int
    var queueTime: Int
    var minPrice: Int
    var maxPrice: Int
}

struct ArrTenant1 {
    static let tenant: [Tenant] = [
        .init(menus: arrMenuTA.menu, name: "Tenant A", ImageName: "exDummy", Description: "Specialis nasi goreng", Contact: "081234567890", avgWaitTime: 15, queueTime: 5, minPrice: 13, maxPrice: 25),
        .init(menus: arrMenuTA.menu, name: "Tenant B", ImageName: "exDummy", Description: "Aneka masakan rumahan", Contact: "081234567890", avgWaitTime: 15, queueTime: 15, minPrice: 2, maxPrice: 15),
        .init(menus: arrMenuTA.menu, name: "Tenant C", ImageName: "exDummy", Description: "Taiwanese crispy chicken", Contact: "0812", avgWaitTime: 15, queueTime: 5, minPrice: 15, maxPrice: 25),
    ]
}

struct ArrTenant6 {
    static let tenant: [Tenant] = [
        .init(menus: arrMenuTA.menu, name: "Tenant D", ImageName: "exDummy", Description: "Prasmanan aneka masakan rumahan", Contact: "081234567890", avgWaitTime: 15, queueTime: 5, minPrice: 13, maxPrice: 25),
        .init(menus: arrMenuTA.menu, name: "Tenant E", ImageName: "exDummy", Description: "Daily fresh juice", Contact: "081234567890", avgWaitTime: 15, queueTime: 15, minPrice: 10, maxPrice: 25),
    ]
}

struct ArrTenant9 {
    static let tenant: [Tenant] = [
        .init(menus: arrMenuTA.menu, name: "Tenant F", ImageName: "exDummy", Description: "Bakmie Ayam Chilli Oil”", Contact: "081234567890", avgWaitTime: 0, queueTime: 3, minPrice: 13, maxPrice: 30),
        .init(menus: arrMenuTA.menu, name: "Tenant G", ImageName: "exDummy", Description: "Spesialis nasi kapau", Contact: "081234567890", avgWaitTime: 0, queueTime: 5, minPrice: 5, maxPrice: 15),
    ]
}

