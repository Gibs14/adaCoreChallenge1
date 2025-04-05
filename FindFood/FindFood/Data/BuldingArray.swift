//
//  BuldingArray.swift
//  FindFood
//
//  Created by Gibran Shevaldo on 26/03/25.
//

import Foundation

struct Building: Hashable{
    let tenants: [Tenant]
    let name: String
}

struct ArrGOP {
    static let building: [Building] = [
        .init(tenants: ArrTenant1.tenant, name: "GOP 1"),
        .init(tenants: ArrTenant6.tenant, name: "GOP 6"),
        .init(tenants: ArrTenant9.tenant, name: "GOP 9")
        ]
}
