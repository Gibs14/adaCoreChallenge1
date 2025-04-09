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
        .init(menus: arrMenuTA.menu, name: "Nasi Goreng Bang Ali", ImageName: "logoNasGoR", Description: "Specialis nasi goreng", Contact: "081234567888", avgWaitTime: 15, queueTime: 5, minPrice: 13, maxPrice: 25),
        .init(menus: arrMenuTB.menu, name: "Kantin Jempol", ImageName: "logoJempol", Description: "Aneka masakan rumahan", Contact: "081234455990", avgWaitTime: 15, queueTime: 15, minPrice: 2, maxPrice: 15),
        .init(menus: arrMenuTC.menu, name: "Zhi Lin", ImageName: "logoZhiLin", Description: "Taiwanese crispy chicken", Contact: "0812", avgWaitTime: 15, queueTime: 5, minPrice: 15, maxPrice: 25),
    ]
}

struct ArrTenant6 {
    static let tenant: [Tenant] = [
        .init(menus: arrMenuTD.menu, name: "Mama Rosa", ImageName: "logoMamaRosa", Description: "Prasmanan aneka masakan rumahan", Contact: "082278792833", avgWaitTime: 15, queueTime: 5, minPrice: 13, maxPrice: 25),
        .init(menus: arrMenuTE.menu, name: "Trobeki Juice", ImageName: "logoJus", Description: "Daily fresh juice", Contact: "081176567820", avgWaitTime: 15, queueTime: 15, minPrice: 10, maxPrice: 25),
    ]
}

struct ArrTenant9 {
    static let tenant: [Tenant] = [
        .init(menus: arrMenuTF.menu, name: "Bang Chili Oil", ImageName: "logoMie", Description: "Bakmie Ayam Chilli Oil”", Contact: "081200783492", avgWaitTime: 0, queueTime: 3, minPrice: 13, maxPrice: 30),
        .init(menus: arrMenuTG.menu, name: "Sari Merah", ImageName: "exDummy", Description: "Spesialis nasi kapau", Contact: "081233309854", avgWaitTime: 0, queueTime: 5, minPrice: 5, maxPrice: 15),
    ]
}
