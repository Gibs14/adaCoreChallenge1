//
//  MenuCard.swift
//  FindFood
//
//  Created by Gibran Shevaldo on 25/03/25.
//

import SwiftUI

struct MenuCard: View {
    @Binding var menu: Menu // Binding untuk update data langsung di array
    @State private var showDeleteConfirmation = false
    
    var body: some View {
        HStack {
            Image(menu.ImageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100, height: 100)
            
            Spacer()
            
            VStack(alignment: .leading) {
                Text(menu.name)
                    .font(.headline)
                    .italic()
                
                HStack {
                    Text(menu.Description)
                        .font(.subheadline)
                        .foregroundColor(.gray)
                    
                }
                HStack {
                    Image(systemName: "dollarsign.circle.fill")
                        .foregroundColor(.orange)
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 14, height: 14)
                    Text("Rp. \(menu.price).000")
                        .font(.system(size: 12, weight: .regular))
                        .foregroundColor(.gray)
                }
            }
            HStack{
                Spacer()
                if menu.quantity > 0 {
                    HStack(spacing: 10) {
                        Button {
                            if menu.quantity == 1 {
                                showDeleteConfirmation = true
                            } else {
                                menu.quantity -= 1
                            }
                        } label: {
                            Image(systemName: "minus")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 12, height: 12)
                                .foregroundColor(.black)
                        }
                        
                        Text("\(menu.quantity)")
                            .font(.system(size: 14, weight: .medium))
                        
                        Button {
                            menu.quantity += 1
                        } label: {
                            Image(systemName: "plus")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 12, height: 12)
                                .foregroundColor(.black)
                        }
                    }
                    .padding(.horizontal, 8)
                    .padding(.vertical, 4)
                    .background(Color.gray.opacity(0.1))
                    .cornerRadius(8)
                } else {
                    Button {
                        menu.quantity += 1
                    } label: {
                        Image(systemName: "plus")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 15, height: 15)
                            .foregroundColor(.black)
                    }
                    .padding(.horizontal, 20)
                }
            }
        }
        .alert("CONFIRMATION", isPresented: $showDeleteConfirmation) {
            Button("Delete", role: .destructive) {
                menu.quantity = 0
            }
            Button("Cancel", role: .cancel) {}
        } message: {
            Text("Are you sure you want to remove this item?")
                .font(.body)
        }
    }
}

#Preview { //Preview when Binding is needed
    struct PreviewWrapper: View {
        @State private var previewMenu = Menu(name: "Nasi Goreng Kampung",
                                            ImageName: "exDummy",
                                            Description: "abcd",
                                            price: 13,
                                            quantity: 0,
                                            category: "Nasi Goreng",
                                            popular: true)
        
        var body: some View {
            MenuCard(menu: $previewMenu)
        }
    }
    return PreviewWrapper()
}
