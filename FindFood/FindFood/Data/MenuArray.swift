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
        .init(name: "Nasi Goreng Kampung", ImageName: "NSKampung", Description: "nasi, ayam, telur dadar", price: 13, quantity: 0, category: "Nasi Goreng", popular: true),
        .init(name: "Nasi Goreng Setan", ImageName: "NSSetan", Description: "nasi, ayam, sosis, sambal pedas setan", price: 15, quantity: 0, category: "Nasi Goreng", popular: true),
        .init(name: "Nasi Goreng Tek Tek", ImageName: "NSTektek", Description: "nasi, ayam, telur", price: 15, quantity: 0, category: "Nasi Goreng", popular: false),
        .init(name: "Nasi Goreng Ikan Asin", ImageName: "NSIkanAsin", Description: "nasi, ikan asin, telur", price: 20, quantity: 0, category: "Nasi Goreng", popular: false),
        .init(name: "Nasi Goreng Spesial", ImageName: "NSSpesial", Description: "nasi, bakso, sosis, ayam, telur", price: 25, quantity: 0, category: "Nasi Goreng", popular: true),
        .init(name: "Nasi Goreng Bakso Ikan", ImageName: "NSBsIkan", Description: "nasi, bakso ikan, telur", price: 20, quantity: 0, category: "Nasi Goreng", popular: false),
        .init(name: "Nasi Goreng Cabe Ijo", ImageName: "NSCabeIjo", Description: "nasi, ayam, telur, cabe ijo", price: 20, quantity: 0, category: "Nasi Goreng", popular: false),
    ]
}


struct arrMenuTB {
    static let menu: [Menu] = [
        .init(name: "Ayam Goreng", ImageName: "AGrg", Description: "", price: 10, quantity: 0, category: "Ayam", popular: true),
        .init(name: "Ayam Balado", ImageName: "ABalado", Description: "", price: 10, quantity: 0, category: "Ayam", popular: true),
        .init(name: "Ayam Bakar", ImageName: "ABakar", Description: "", price: 10, quantity: 0, category: "Ayam", popular: false),
        .init(name: "Ayam Asam Manis", ImageName: "AAsamManis", Description: "", price: 10, quantity: 0, category: "Ayam", popular: false),
        .init(name: "Sapi Lada Hitam", ImageName: "SpLadaHitam", Description: "", price: 13, quantity: 0, category: "Ayam", popular: false),
        .init(name: "Sapi Teriyaki", ImageName: "SpTeriyaki", Description: "", price: 13, quantity: 0, category: "Sapi", popular: false),
        .init(name: "Sapi Sei", ImageName: "SpSei", Description: "", price: 13, quantity: 0, category: "Sapi", popular: false),
        .init(name: "Capcay", ImageName: "Capcay", Description: "sawi, wortel, jamur kuping, jagung muda", price: 5, quantity: 0, category: "Sayuran", popular: false),
        .init(name: "Brokoli", ImageName: "Brokoli", Description: "", price: 5, quantity: 0, category: "Sayuran", popular: false),
        .init(name: "Nasi Putih", ImageName: "NP", Description: "", price: 2, quantity: 0, category: "Nasi", popular: false),
        .init(name: "Nasi Merah", ImageName: "NM", Description: "", price: 2, quantity: 0, category: "Nasi", popular: false)
    ]
}

struct arrMenuTC {
    static let menu: [Menu] = [
        .init(name: "XL Crispy Chicken Balado", ImageName: "ZhilinChicken", Description: "XL bumbu balado", price: 15, quantity: 0, category: "XL Crispy Chicken", popular: true),
        .init(name: "XL Crispy Chicken Seaweed", ImageName: "ZhilinChicken", Description: "XL bumbu seaweed", price: 15, quantity: 0, category: "XL Crispy Chicken", popular: false),
        .init(name: "XL Crispy Chicken Jagung Bakar + Balado", ImageName: "ZhilinChicken", Description: "XL bumbu jagung bakar + balado", price: 18, quantity: 0, category: "XL Crispy Chicken", popular: true),
        .init(name: "XL Crispy Chicken Jagung Bakar + Seaweed", ImageName: "ZhilinChicken", Description: "XL bumbu jagung bakar + seaweed", price: 18, quantity: 0, category: "XL Crispy Chicken", popular: false),
        .init(name: "XXL Crispy Chicken Balado", ImageName: "ZhilinChickenXXL", Description: " XXL bumbu balado", price: 20, quantity: 0, category: "XXL Crispy Chicken", popular: true),
        .init(name: "XXL Crispy Chicken Seaweed", ImageName: "ZhilinChickenXXL", Description: "XXL bumbu seaweed", price: 20, quantity: 0, category: "XXL Crispy Chicken", popular: false),
        .init(name: "XXL Crispy Chicken Jagung Bakar + Balado", ImageName: "ZhilinChickenXXL", Description: "XXL bumbu jagung bakar + balado", price: 25, quantity: 0, category: "XXL Crispy Chicken", popular: true),
        .init(name: "XXL Crispy Chicken Jagung Bakar + Seaweed", ImageName: "ZhilinChickenXXL", Description: "XXL bumbu jagung bakar + seaweed", price: 25, quantity: 0, category: "XXL Crispy Chicken", popular: false),
    ]
}

struct arrMenuTD {
    static let menu: [Menu] = [
        .init(name: "Ayam Madu", ImageName: "AyMadu", Description: "", price: 15, quantity: 0, category: "Ayam", popular: false),
        .init(name: "Ayam Kecap", ImageName: "AyKecap", Description: "", price: 15, quantity: 0, category: "Ayam", popular: false),
        .init(name: "Ayam Asam Manis", ImageName: "AyAsamManis", Description: "", price: 15, quantity: 0, category: "Ayam", popular: true),
        .init(name: "Pepes Ayam", ImageName: "AyPepes", Description: "", price: 15, quantity: 0, category: "Ayam", popular: true),
        .init(name: "Sapi Brokoli", ImageName: "SapBrokol", Description: "", price: 18, quantity: 0, category: "Sapi", popular: false),
        .init(name: "Sapi Lada Hitam", ImageName: "SapLdHitam", Description: "", price: 18, quantity: 0, category: "Sapi", popular: false),
        .init(name: "Sapi Bulgogi", ImageName: "SapBulgogi", Description: "", price: 18, quantity: 0, category: "Sapi", popular: true),
        .init(name: "Tumis Bayam Jagung", ImageName: "BymJagung", Description: "", price: 13, quantity: 0, category: "Sayuran", popular: false),
        .init(name: "Kangkung Terasi", ImageName: "Kangkung", Description: "", price: 13, quantity: 0, category: "Sayuran", popular: true),
        .init(name: "Tahu Toge", ImageName: "TahuToge", Description: "", price: 13, quantity: 0, category: "Sayuran", popular: false),
        .init(name: "Nasi Bakar Ayam Goreng", ImageName: "NBGoreng", Description: "nasi bakar, ayam goreng, timun", price: 25, quantity: 0, category: "Paket Nasi", popular: false),
        .init(name: "Nasi Bakar Ayam Bakar", ImageName: "NBBakar", Description: "nasi bakar, ayam bakar, timun", price: 25, quantity: 0, category: "Paket Nasi", popular: true),
        .init(name: "Nasi Putih", ImageName: "NP", Description: "", price: 0, quantity: 0, category: "Nasi", popular: false),
        .init(name: "Nasi Merah", ImageName: "NM", Description: "", price: 0, quantity: 0, category: "Nasi", popular: false),
    ]
}

struct arrMenuTE {
    static let menu: [Menu] = [
        .init(name: "Strawberry Juice", ImageName: "JusStrob", Description: "strawberry, gula", price: 10, quantity: 0, category: "Juice", popular: true),
        .init(name: "Sirsak Juice", ImageName: "JusSirsak", Description: "sirsak, gula", price: 10, quantity: 0, category: "Juice", popular: true),
        .init(name: "Belimbing Juice", ImageName: "JusBelimbing", Description: "belimbing, gula", price: 10, quantity: 0, category: "Juice", popular: false),
        .init(name: "Tomato Juice", ImageName: "JusTomat", Description: "tomat, gula", price: 10, quantity: 0, category: "Juice", popular: false),
        .init(name: "Orange Juice", ImageName: "JusOrange", Description: "orange, gula", price: 10, quantity: 0, category: "Juice", popular: false),
        .init(name: "Tomato + Carrot", ImageName: "JusOrangeMix", Description: "tomat, wortel, gula", price: 20, quantity: 0, category: "Mix 2 Juice", popular: false),
        .init(name: "Strawbery + Banana", ImageName: "JusPinkMix", Description: "strawberry, pisang, gula", price: 20, quantity: 0, category: "Mix 2 Juice", popular: true),
        .init(name: "Strawbery + Sirsak", ImageName: "JusPinkMix", Description: "strawberry, sirsak, gula", price: 20, quantity: 0, category: "Mix 2 Juice", popular: true),
        .init(name: "Strawbery + Banana + Sirsak", ImageName: "JusPinkMix", Description: "strawberry, pisang, sirsak, gula", price: 25, quantity: 0, category: "Mix 3 Juice", popular: true),
        .init(name: "Orange + Banana + Sirsak", ImageName: "JusOrangeMix", Description: "orange, pisang, sirsak, gula", price: 25, quantity: 0, category: "Mix 3 Juice", popular: false),

    ]
}


struct arrMenuTF {
    static let menu: [Menu] = [
        .init(name: "Mie Ayam", ImageName: "MieAyam", Description: "mie, ayam, caisim", price: 13, quantity: 0, category: "Mie Kecil", popular: false),
        .init(name: "Mie Ayam Jamur", ImageName: "MieAJamur", Description: "mie, ayam, jamur, caisim", price: 15, quantity: 0, category: "Mie Kecil", popular: false),
        .init(name: "Mie Ayam Pangsit", ImageName: "MieAPangsit", Description: "mie, ayam, pangsit rebus, caisim", price: 18, quantity: 0, category: "Mie Kecil", popular: false),
        .init(name: "Mie Ayam Bakso", ImageName: "MieABakso", Description: "mie, ayam, bakso, caisim", price: 18, quantity: 0, category: "Mie Kecil", popular: false),
        .init(name: "Mie Ayam Spesial", ImageName: "MieASpesial", Description: "mie, ayam, bakso, pangsit rebus, caisim", price: 25, quantity: 0, category: "Mie Kecil", popular: true),
        .init(name: "Bihun Ayam", ImageName: "MieAyam", Description: "bihun, ayam, caisim", price: 13, quantity: 0, category: "Bihun", popular: false),
        .init(name: "Bihun Jamur", ImageName: "MieAJamur", Description: "bihun, ayam, jamur, caisim", price: 15, quantity: 0, category: "Bihun", popular: false),
        .init(name: "Bihun Pangsit", ImageName: "MieAPangsit", Description: "bihun, ayam, pangsit rebus, caisim", price: 18, quantity: 0, category: "Bihun", popular: false),
        .init(name: "Bihun Bakso", ImageName: "MieABakso", Description: "bihun, ayam, bakso, caisim", price: 18, quantity: 0, category: "Bihun", popular: false),
        .init(name: "Bihun Spesial", ImageName: "MieASpesial", Description: "bihun, ayam, bakso, pangsit rebus, caisim", price: 25, quantity: 0, category: "Bihun", popular: true),
        .init(name: "Kwetiaw Ayam", ImageName: "MieAyam", Description: "kwetiaw, ayam, caisim", price: 15, quantity: 0, category: "Kwetiaw", popular: false),
        .init(name: "Kwetiaw Jamur", ImageName: "MieAJamur", Description: "kwetiaw, ayam, jamur, caisim", price: 17, quantity: 0, category: "Kwetiaw", popular: false),
        .init(name: "Kwetiaw Pangsit", ImageName: "MieAPangsit", Description: "kwetiaw, ayam, pangsit rebus, caisim", price: 20, quantity: 0, category: "Kwetiaw", popular: false),
        .init(name: "Kwetiaw Bakso", ImageName: "MieABakso", Description: "kwetiaw, ayam, bakso, caisim", price: 20, quantity: 0, category: "Kwetiaw", popular: false),
        .init(name: "Kwetiaw Spesial", ImageName: "MieASpesial", Description: "kwetiaw, ayam, bakso, pangsit rebus, caisim", price: 30, quantity: 0, category: "Kwetiaw", popular: true),
     
        

    ]
}

struct arrMenuTG {
    static let menu: [Menu] = [
        .init(name: "Nasi Rendang", ImageName: "NsRendang", Description: "nasi, rendang, sambal", price: 10, quantity: 0, category: "1 lauk", popular: true),
        .init(name: "Nasi Gulai Ayam", ImageName: "NsGulaiAy", Description: "nasi, gulai ayam, sambal", price: 10, quantity: 0, category: "1 lauk", popular: false),
        .init(name: "Nasi Tongseng Kambing", ImageName: "NsTongsengK", Description: "nasi, tongseng kambing, sambal", price: 10, quantity: 0, category: "1 lauk", popular: false),
        .init(name: "Nasi Ayam Pop", ImageName: "NsAyPop", Description: "nasi, ayam pop, sambal", price: 10, quantity: 0, category: "1 lauk", popular: false),
        .init(name: "Nasi Rendang Singkong", ImageName: "NsRendang", Description: "nasi, rendang, gulai singkong, sambal", price: 15, quantity: 0, category: "2 lauk", popular: true),
        .init(name: "Nasi Gulai Ayam Singkong", ImageName: "NsGulaiAy", Description: "nasi, gulai ayam, gulai singkong, sambal", price: 15, quantity: 0, category: "2 lauk", popular: false),
        .init(name: "Nasi Tongseng Kambing Singkong", ImageName: "NsTongsengK", Description: "nasi, tongseng kambing, gulai singkong, sambal", price: 15, quantity: 0, category: "2 lauk", popular: false),
        .init(name: "Nasi Ayam Pop Singkong", ImageName: "NsAyPop", Description: "nasi, ayam pop, gulai singkong, sambal", price: 15, quantity: 0, category: "2 lauk", popular: false),
        .init(name: "Tempe Goreng", ImageName: "TempeG", Description: "", price: 5, quantity: 0, category: "Gorengan", popular: false),
        .init(name: "Tahu Goreng", ImageName: "TahuG", Description: "", price: 5, quantity: 0, category: "Gorengan", popular: false),
        .init(name: "Lumpia", ImageName: "Lumpia", Description: "lumpia isi wortel, bihun", price: 5, quantity: 0, category: "Gorengan", popular: true),
    ]
}
