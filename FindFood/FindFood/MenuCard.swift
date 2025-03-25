//
//  MenuCard.swift
//  FindFood
//
//  Created by Gibran Shevaldo on 25/03/25.
//

import SwiftUI

struct MenuCard: View {
    let menu: Menu
    var body: some View {
        HStack{
            Image(menu.ImageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100, height: 100)
            VStack(alignment: .leading){
                
                Text(menu.name)
                    .font(.headline)
                    .italic()
    
                HStack{
                    Text(menu.Description)
                        .font(.subheadline)
                        .foregroundColor(.gray)
                    
                    Spacer()
                    
                    Button {
                        //Action for the Plus Button
                    } label: {
                        Image(systemName: "plus")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 15, height: 15)
                            .foregroundColor(.black)
                    }
                    .padding(.horizontal, 20)
                }
                
                HStack{
                    Image(systemName: "dollarsign.circle.fill")
                        .foregroundColor(.orange)
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 14, height: 14)
                    Text("Rp. \(menu.price).000")
                        .font(.system(size: 12, weight: .regular))
                        .foregroundColor(.gray)
                }
            }
        }

    }
}

#Preview {
    MenuCard(menu: Menu(name: "Menu A", ImageName: "exDummy", Description: "Ini Desc", price: 15))
}
