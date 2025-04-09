//
//  MenuViewG.swift
//  FindFood
//
//  Created by Gibran Shevaldo on 26/03/25.
//

import SwiftUI

struct MenuViewG: View {
    let tenantName: String
    @State private var searchText: String = ""
    @State private var menus = arrMenuTG.menu
    
    private var filteredIndices: [Int] {
        menus.indices.filter { index in
            searchText.isEmpty ||
            menus[index].name.lowercased().contains(searchText.lowercased())
        }
    }
    
    private var menuCategories: [String: [Menu]] {
        var grouped = Dictionary(grouping: menus) { $0.category }
        let popularMenus = menus.filter { $0.popular }
        if !popularMenus.isEmpty {
            grouped["Popular"] = popularMenus
        }
        
        return grouped
    }
    
    private var sortedCategories: [String] {
        menuCategories.keys.sorted { $0 == "Popular" ? true : $1 != "Popular" && $0 < $1 }
    }
    
    var body: some View {
        NavigationStack {
            mainContentView
                .navigationTitle(tenantName)
                .searchable(text: $searchText, prompt: "Cari menu...")
        }
    }

    private var mainContentView: some View {
        ZStack{
            VStack {
                menuContent
                Spacer(minLength: 65.0)
            }
            VStack {
                Spacer()
                
                ZStack{
                    Color(red: 236/255, green: 231/255, blue: 243/255)
                        .frame(height: 100)
                    HStack{
                        VStack(alignment: .leading){
                            HStack{
                                Text("Harga total")
                                    .font(.system(size: 16))
                                    .colorInvert()
                                Text("|")
                                    .colorInvert()
                                let totalItems = menus.reduce(0) { $0 + $1.quantity }
                                Text("\(totalItems) item\(totalItems > 1 ? "s" : "")")
                                    .font(.system(size: 12))
                                    .animation(.easeInOut, value: totalItems)
                                    .colorInvert()
                            }
                            
                            priceCalculation
                            
                        }.padding(.horizontal, 30)
                            .foregroundStyle(Color.white)
                        
                        Spacer()
                        NavigationLink {
                            SummaryView(
                                originalMenus: $menus,
                                selectedMenus: menus.filter { $0.quantity > 0 }
                            )
                        } label: {
                            Text("DETAIL")
                                .font(.system(size: 18, weight: .bold))
                                .foregroundColor(.white)
                                .padding()
                                .frame(height: 44)
                                .background(Color.purple)
                                .cornerRadius(10)
                                .shadow(radius: 3)
                                .padding(.trailing, 20)
                        }
                        .buttonStyle(.plain)
                        .padding(.horizontal, 10)
                    }
                }
            }.ignoresSafeArea()
        }
    }
    
    private var priceCalculation: some View {
        let totalPrice = menus.reduce(0) { $0 + ($1.price * $1.quantity) }
        
        if totalPrice > 0 {
            return VStack(alignment: .leading) {
                Text("\(formattedPrice(totalPrice)).000")
                    .foregroundStyle(Color.black)
                    .font(.system(size: 24, weight: .bold))
                    .transition(.opacity)
                    .animation(.easeInOut, value: totalPrice)
            }
        } else {
            return VStack(alignment: .leading) {
                Text("\(formattedPrice(totalPrice))")
                    .foregroundStyle(Color.black)
                    .font(.system(size: 24, weight: .bold))
                    .transition(.opacity)
                    .animation(.easeInOut, value: totalPrice)
            }
        }
    }

    private func formattedPrice(_ price: Int) -> String {
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.maximumFractionDigits = 0
        return formatter.string(from: NSNumber(value: price))?.replacingOccurrences(of: "IDR", with: "") ?? "Rp0"
    }
    
    private var menuContent: some View {
        ScrollView {
            LazyVStack {
                if searchText.isEmpty {
                    categoriesView
                } else {
                    searchResultsView
                }
            }
            .padding(.horizontal, 15)
        }
    }
    
    private var categoriesView: some View {
        ForEach(sortedCategories, id: \.self) { category in
            VStack(alignment: .leading) {
                Text(category)
                    .font(.title2)
                    .bold()
                
                LazyVGrid(columns: [GridItem(.flexible())], spacing: 10) {
                    ForEach(menuCategories[category] ?? [], id: \.self) { menu in
                        MenuCard(menu: binding(for: menu))
                            .padding(.vertical, 8)
                    }
                }
            }
        }
    }
    
    private var searchResultsView: some View {
        Group {
            if filteredIndices.isEmpty {
                noResultsView
            } else {
                LazyVGrid(columns: [GridItem(.flexible())], spacing: 10) {
                    ForEach(filteredIndices, id: \.self) { index in
                        MenuCard(menu: $menus[index])
                            .padding(.vertical, 8)
                    }
                }
            }
        }
    }
    
    private var noResultsView: some View {
        Text("Menu tidak ditemukan")
            .multilineTextAlignment(.center)
            .foregroundColor(.gray)
    }
    
    // Helper function untuk mendapatkan binding ke menu
    private func binding(for menu: Menu) -> Binding<Menu> {
        guard let index = menus.firstIndex(where: { $0.name == menu.name }) else {
            fatalError("Menu tidak ditemukan")
        }
        return $menus[index]
    }
}

#Preview {
    MenuViewG(tenantName: "tenan")
}
