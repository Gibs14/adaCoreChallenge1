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
    var quantity: Int
    var category: String
    var popular: Bool
}

struct arrMenuTA {
    static let menu: [Menu] = [
        .init(name: "Nasi Goreng Kampung", ImageName: "exDummy", Description: "abcd", price: 13, quantity: 0, category: "Nasi Goreng", popular: true),
        .init(name: "Nasi Goreng Setan", ImageName: "exDummy", Description: "abcd", price: 15, quantity: 0, category: "Nasi Goreng", popular: true),
        .init(name: "Nasi Goreng Tek Tek", ImageName: "exDummy", Description: "abcd", price: 15, quantity: 0, category: "Nasi Goreng", popular: false),
        .init(name: "Nasi Goreng Ikan Asin", ImageName: "exDummy", Description: "abcd", price: 20, quantity: 0, category: "Nasi Goreng", popular: false),
        .init(name: "Nasi Goreng Spesial", ImageName: "exDummy", Description: "abcd", price: 25, quantity: 0, category: "Nasi Goreng", popular: true),
        .init(name: "Nasi Goreng Bakso Ikan", ImageName: "exDummy", Description: "abcd", price: 20, quantity: 0, category: "Nasi Goreng", popular: false),
        .init(name: "Nasi Goreng Cabe Ijo", ImageName: "exDummy", Description: "abcd", price: 20, quantity: 0, category: "Nasi Goreng", popular: false),
    ]
}


struct arrMenuTB {
    static let menu: [Menu] = [
        .init(name: "Ayam Goreng", ImageName: "exDummy", Description: "abcd", price: 10, quantity: 0, category: "Ayam", popular: true),
        .init(name: "Ayam Balado", ImageName: "exDummy", Description: "abcd", price: 10, quantity: 0, category: "Ayam", popular: true),
        .init(name: "Ayam Bakar", ImageName: "exDummy", Description: "abcd", price: 10, quantity: 0, category: "Ayam", popular: false),
        .init(name: "Ayam Asam Manis", ImageName: "exDummy", Description: "abcd", price: 10, quantity: 0, category: "Ayam", popular: false),
        .init(name: "Sapi Lada Hitam", ImageName: "exDummy", Description: "abcd", price: 13, quantity: 0, category: "Ayam", popular: false),
        .init(name: "Sapi Teriyaki", ImageName: "exDummy", Description: "abcd", price: 13, quantity: 0, category: "Sapi", popular: false),
        .init(name: "Sapi Sei", ImageName: "exDummy", Description: "abcd", price: 13, quantity: 0, category: "Sapi", popular: false),
        .init(name: "Capcay", ImageName: "exDummy", Description: "abcd", price: 5, quantity: 0, category: "Sayuran", popular: false),
        .init(name: "Brokoli", ImageName: "exDummy", Description: "abcd", price: 5, quantity: 0, category: "Sayuran", popular: false),
        .init(name: "Nasi Putih", ImageName: "exDummy", Description: "abcd", price: 2, quantity: 0, category: "Nasi", popular: false),
        .init(name: "Nasi Merah", ImageName: "exDummy", Description: "abcd", price: 2, quantity: 0, category: "Nasi", popular: false)
    ]
}

struct arrMenuTC {
    static let menu: [Menu] = [
        .init(name: "XL Crispy Chicken Balado", ImageName: "exDummy", Description: "abcd", price: 15, quantity: 0, category: "XL Crispy Chicken", popular: true),
        .init(name: "XL Crispy Chicken Seaweed", ImageName: "exDummy", Description: "abcd", price: 15, quantity: 0, category: "XL Crispy Chicken", popular: false),
        .init(name: "XL Crispy Chicken Jagung Bakar + Balado", ImageName: "exDummy", Description: "abcd", price: 18, quantity: 0, category: "XL Crispy Chicken", popular: true),
        .init(name: "XL Crispy Chicken Jagung Bakar + Seaweed", ImageName: "exDummy", Description: "abcd", price: 18, quantity: 0, category: "XL Crispy Chicken", popular: false),
        .init(name: "XXL Crispy Chicken Balado", ImageName: "exDummy", Description: "abcd", price: 20, quantity: 0, category: "XXL Crispy Chicken", popular: true),
        .init(name: "XXL Crispy Chicken Seaweed", ImageName: "exDummy", Description: "abcd", price: 20, quantity: 0, category: "XXL Crispy Chicken", popular: false),
        .init(name: "XXL Crispy Chicken Jagung Bakar + Balado", ImageName: "exDummy", Description: "abcd", price: 25, quantity: 0, category: "XXL Crispy Chicken", popular: true),
        .init(name: "XXL Crispy Chicken Jagung Bakar + Seaweed", ImageName: "exDummy", Description: "abcd", price: 25, quantity: 0, category: "XXL Crispy Chicken", popular: false),
    ]
}

struct arrMenuTD {
    static let menu: [Menu] = [
        .init(name: "Ayam Madu", ImageName: "exDummy", Description: "abcd", price: 15, quantity: 0, category: "Ayam", popular: false),
        .init(name: "Ayam Kecap", ImageName: "exDummy", Description: "abcd", price: 15, quantity: 0, category: "Ayam", popular: false),
        .init(name: "Ayam Asam Manis", ImageName: "exDummy", Description: "abcd", price: 15, quantity: 0, category: "Ayam", popular: true),
        .init(name: "Pepes Ayam", ImageName: "exDummy", Description: "abcd", price: 15, quantity: 0, category: "Ayam", popular: true),
        .init(name: "Sapi Brokoli", ImageName: "exDummy", Description: "abcd", price: 18, quantity: 0, category: "Sapi", popular: false),
        .init(name: "Sapi Lada Hitam", ImageName: "exDummy", Description: "abcd", price: 18, quantity: 0, category: "Sapi", popular: false),
        .init(name: "Sapi Bulgogi", ImageName: "exDummy", Description: "abcd", price: 18, quantity: 0, category: "Sapi", popular: true),
        .init(name: "Tumis Bayam Jagung", ImageName: "exDummy", Description: "abcd", price: 13, quantity: 0, category: "Sayuran", popular: false),
        .init(name: "Kangkung Terasi", ImageName: "exDummy", Description: "abcd", price: 13, quantity: 0, category: "Sayuran", popular: true),
        .init(name: "Tahu Toge", ImageName: "exDummy", Description: "abcd", price: 13, quantity: 0, category: "Sayuran", popular: false),
        .init(name: "Nasi Bakar Ayam Goreng", ImageName: "exDummy", Description: "abcd", price: 25, quantity: 0, category: "Paket Nasi", popular: false),
        .init(name: "Nasi Bakar Ayam Bakar", ImageName: "exDummy", Description: "abcd", price: 25, quantity: 0, category: "Paket Nasi", popular: true),
        .init(name: "Nasi Putih", ImageName: "exDummy", Description: "abcd", price: 0, quantity: 0, category: "Nasi", popular: false),
        .init(name: "Nasi Merah", ImageName: "exDummy", Description: "abcd", price: 0, quantity: 0, category: "Nasi", popular: false),
    ]
}

struct arrMenuTE {
    static let menu: [Menu] = [
        .init(name: "Strawberry Juice", ImageName: "exDummy", Description: "abcd", price: 10, quantity: 0, category: "Juice", popular: true),
        .init(name: "Sirsak Juice", ImageName: "exDummy", Description: "abcd", price: 10, quantity: 0, category: "Juice", popular: true),
        .init(name: "Belimbing Juice", ImageName: "exDummy", Description: "abcd", price: 10, quantity: 0, category: "Juice", popular: false),
        .init(name: "Tomato Juice", ImageName: "exDummy", Description: "abcd", price: 10, quantity: 0, category: "Juice", popular: false),
        .init(name: "Orange Juice", ImageName: "exDummy", Description: "abcd", price: 10, quantity: 0, category: "Juice", popular: false),
        .init(name: "Tomato + Carrot", ImageName: "exDummy", Description: "abcd", price: 20, quantity: 0, category: "Mix 2 Juice", popular: false),
        .init(name: "Strawbery + Banana", ImageName: "exDummy", Description: "abcd", price: 20, quantity: 0, category: "Mix 2 Juice", popular: true),
        .init(name: "Strawbery + Sirsak", ImageName: "exDummy", Description: "abcd", price: 20, quantity: 0, category: "Mix 2 Juice", popular: true),
        .init(name: "Strawbery + Banana + Sirsak", ImageName: "exDummy", Description: "abcd", price: 25, quantity: 0, category: "Mix 3 Juice", popular: true),
        .init(name: "Orange + Banana + Sirsak", ImageName: "exDummy", Description: "abcd", price: 25, quantity: 0, category: "Mix 3 Juice", popular: false),

    ]
}


struct arrMenuTF {
    static let menu: [Menu] = [
        .init(name: "Mie Ayam", ImageName: "exDummy", Description: "abcd", price: 13, quantity: 0, category: "Mie Kecil", popular: false),
        .init(name: "Mie Ayam Jamur", ImageName: "exDummy", Description: "abcd", price: 15, quantity: 0, category: "Mie Kecil", popular: false),
        .init(name: "Mie Ayam Pangsit", ImageName: "exDummy", Description: "abcd", price: 18, quantity: 0, category: "Mie Kecil", popular: false),
        .init(name: "Mie Ayam Bakso", ImageName: "exDummy", Description: "abcd", price: 18, quantity: 0, category: "Mie Kecil", popular: false),
        .init(name: "Mie Ayam Spesial", ImageName: "exDummy", Description: "abcd", price: 25, quantity: 0, category: "Mie Kecil", popular: true),
        .init(name: "Bihun Ayam", ImageName: "exDummy", Description: "abcd", price: 13, quantity: 0, category: "Bihun", popular: false),
        .init(name: "Bihun Jamur", ImageName: "exDummy", Description: "abcd", price: 15, quantity: 0, category: "Bihun", popular: false),
        .init(name: "Bihun Pangsit", ImageName: "exDummy", Description: "abcd", price: 18, quantity: 0, category: "Bihun", popular: false),
        .init(name: "Bihun Bakso", ImageName: "exDummy", Description: "abcd", price: 18, quantity: 0, category: "Bihun", popular: false),
        .init(name: "Bihun Spesial", ImageName: "exDummy", Description: "abcd", price: 25, quantity: 0, category: "Bihun", popular: true),
        .init(name: "Kwetiaw Ayam", ImageName: "exDummy", Description: "abcd", price: 15, quantity: 0, category: "Kwetiaw", popular: false),
        .init(name: "Kwetiaw Jamur", ImageName: "exDummy", Description: "abcd", price: 17, quantity: 0, category: "Kwetiaw", popular: false),
        .init(name: "Kwetiaw Pangsit", ImageName: "exDummy", Description: "abcd", price: 20, quantity: 0, category: "Kwetiaw", popular: false),
        .init(name: "Kwetiaw Bakso", ImageName: "exDummy", Description: "abcd", price: 20, quantity: 0, category: "Kwetiaw", popular: false),
        .init(name: "Kwetiaw Spesial", ImageName: "exDummy", Description: "abcd", price: 30, quantity: 0, category: "Kwetiaw", popular: true),
     
        

    ]
}

struct arrMenuTG {
    static let menu: [Menu] = [
        .init(name: "Nasi Rendang", ImageName: "exDummy", Description: "abcd", price: 10, quantity: 0, category: "1 lauk", popular: true),
        .init(name: "Nasi Gulai Ayam", ImageName: "exDummy", Description: "abcd", price: 10, quantity: 0, category: "1 lauk", popular: false),
        .init(name: "Nasi Tongseng Kambing", ImageName: "exDummy", Description: "abcd", price: 10, quantity: 0, category: "1 lauk", popular: false),
        .init(name: "Nasi Ayam Pop", ImageName: "exDummy", Description: "abcd", price: 10, quantity: 0, category: "1 lauk", popular: false),
        .init(name: "Nasi Rendang Singkong", ImageName: "exDummy", Description: "abcd", price: 15, quantity: 0, category: "2 lauk", popular: true),
        .init(name: "Nasi Gulai Ayam Singkong", ImageName: "exDummy", Description: "abcd", price: 15, quantity: 0, category: "2 lauk", popular: false),
        .init(name: "Nasi Tongseng Kambing Singkong", ImageName: "exDummy", Description: "abcd", price: 15, quantity: 0, category: "2 lauk", popular: false),
        .init(name: "Nasi Ayam Pop Singkong", ImageName: "exDummy", Description: "abcd", price: 15, quantity: 0, category: "2 lauk", popular: false),
        .init(name: "Tempe Goreng", ImageName: "exDummy", Description: "abcd", price: 5, quantity: 0, category: "Gorengan", popular: false),
        .init(name: "Tahu Goreng", ImageName: "exDummy", Description: "abcd", price: 5, quantity: 0, category: "Gorengan", popular: false),
        .init(name: "Lumpia", ImageName: "exDummy", Description: "abcd", price: 5, quantity: 0, category: "Gorengan", popular: true),
    ]
}
