//
//  TenantCard.swift
//  FindFood
//
//  Created by Gibran Shevaldo on 25/03/25.
//

import SwiftUI

struct TenantCard: View {
    let tenant: Tenant
    var body: some View {
        HStack{
            Image(tenant.ImageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100, height: 100)
            VStack(alignment: .leading){
                
                Text(tenant.name)
                    .font(.headline)
                    .italic()
    
                Text(tenant.Description)
                    .font(.subheadline)
                    .foregroundColor(.gray)
                
                
                HStack{
                    Image(systemName: "phone.circle")
                        .foregroundColor(.black)
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 14, height: 14)
                    Text(tenant.Contact)
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
               
                HStack{
                    HStack{
                        Image(systemName: "clock.arrow.trianglehead.counterclockwise.rotate.90")
                            .foregroundColor(.blue)
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 14, height: 14)
                        Text("\((tenant.avgWaitTime+tenant.queueTime)/2) mins")
                            .font(.system(size: 12, weight: .regular))
                            .foregroundColor(.gray)
                    }
                    HStack{
                        Image(systemName: "dollarsign.circle.fill")
                            .foregroundColor(.orange)
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 14, height: 14)
                        Text("\(tenant.minPrice)k - \(tenant.maxPrice)k")
                            .font(.system(size: 12, weight: .regular))
                            .foregroundColor(.gray)
                    }
                    Spacer()
                }
            }
        }
        .padding(8)

    }
}

#Preview {
    TenantCard(tenant: Tenant(menus: arrMenuTA.menu, name: "Tenant A", ImageName: "exDummy", Description: "Ini Deskripsi", Contact: "0812", avgWaitTime: 15, queueTime: 5, minPrice: 10, maxPrice: 15))
}
