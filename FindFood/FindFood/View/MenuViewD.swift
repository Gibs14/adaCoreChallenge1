//
//  MenuViewD.swift
//  FindFood
//
//  Created by Gibran Shevaldo on 26/03/25.
//

import SwiftUI

struct MenuViewD: View {
    @State private var searchText: String = ""
    @State private var menus = arrMenuTD.menu
    
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
    
    init() { // Setup Color for NavBar (Background and Text)
        let appearance = UINavigationBarAppearance()
        appearance.configureWithOpaqueBackground()
        
        // Create gradient layer
        let gradient = CAGradientLayer()
        gradient.colors = [
            UIColor(named: "NavBarStart")?.cgColor ?? UIColor.blue.cgColor,
            UIColor(named: "NavBarEnd")?.cgColor ?? UIColor.purple.cgColor
        ]
        
        // Top to Bottom Gradient Styler
        gradient.startPoint = CGPoint(x: 0.5, y: 0)
        gradient.endPoint = CGPoint(x: 0.5, y: 1)
        gradient.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: 96)
        
        // Convert to UIImage
        let renderer = UIGraphicsImageRenderer(size: gradient.bounds.size)
        let gradientImage = renderer.image { ctx in
            gradient.render(in: ctx.cgContext)
        }
        
        // Apply to navigation bar
        appearance.backgroundImage = gradientImage
       appearance.titleTextAttributes = [
           .foregroundColor: UIColor.white,
           .font: UIFont.systemFont(ofSize: 20, weight: .bold)
       ]
       
       // For search bar text and placeholder
       UITextField.appearance(whenContainedInInstancesOf: [UISearchBar.self]).defaultTextAttributes = [
           .foregroundColor: UIColor.white
       ]
       UITextField.appearance(whenContainedInInstancesOf: [UISearchBar.self]).attributedPlaceholder = NSAttributedString(
           string: "Search menu...",
           attributes: [.foregroundColor: UIColor.white.withAlphaComponent(0.7)]
       )
       
       // For search bar icon
       UISearchBar.appearance().tintColor = .white
       
       // Apply appearance
       UINavigationBar.appearance().standardAppearance = appearance
       UINavigationBar.appearance().scrollEdgeAppearance = appearance
       UINavigationBar.appearance().tintColor = .white
    }
    
    var body: some View {
        NavigationStack {
            mainContentView
                .navigationTitle("Choose Menu!")
                .searchable(text: $searchText, prompt: "Search menu...")
            
        }
    }
    
    private var mainContentView: some View {
        ZStack{
            VStack {
                quantityHeader
                menuContent
            }
            VStack {
                Spacer()
                
                ZStack{
                    Color("TabBar")
                        .frame(height: 100)
                    HStack{
                        VStack{
                            HStack{
                                Text("Total price")
                                    .font(.system(size: 20))
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
                                originalMenus: $menus,  // Binding ke data asli
                                selectedMenus: menus.filter { $0.quantity > 0 }
                            )
                        } label: {
                            Text("Details")
                                .foregroundStyle(Color.black)
                                .padding(.horizontal, 30)
                        }
                            .padding(.horizontal, 30)
                    }
                }
            }.ignoresSafeArea()
        }
    }
    
    private var quantityHeader: some View {
        HStack {
            Spacer()
            Text("Qty.")
                .padding(.horizontal, 20)
                .padding(.top, 20)
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
            .padding(.horizontal, 10)
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
        Text("No menu found")
            .multilineTextAlignment(.center)
            .foregroundColor(.gray)
    }
    
    // Helper function untuk mendapatkan binding ke menu
    private func binding(for menu: Menu) -> Binding<Menu> {
        guard let index = menus.firstIndex(where: { $0.name == menu.name }) else {
            fatalError("Menu not found")
        }
        return $menus[index]
    }
}

#Preview {
    MenuViewD()
}
