//Jangan lupa Konsultasikan terkait drop down sortingnya

//  TenantView.swift
//  FindFood
//
//  Created by Gibran Shevaldo on 25/03/25.
//

//import SwiftUI
//
//struct TenantView: View {
//    @State var searchText: String = ""
//    @State private var selectedGOP: String = "GOP 1"
//    @State private var showDetailPage: Bool = false
//    @State private var sortOption: String = "None"
//    @State private var showSortOptions = false
//    
//    // Get tenants for currently selected GOP
//    var filteredTenants: [Tenant] {
//        guard let building = ArrGOP.building.first(where: { $0.name == selectedGOP }) else {
//            return []
//        }
//        
//        var tenants = building.tenants
//        
//        // Apply search filter
//        if !searchText.isEmpty {
//            tenants = tenants.filter {
//                $0.name.lowercased().contains(searchText.lowercased())
//            }
//        }
//        
//        // Apply sorting
//        switch sortOption {
//        case "Price Range":
//            return tenants.sorted { ($0.minPrice + $0.maxPrice)/2 < ($1.minPrice + $1.maxPrice)/2 }
//        case "Time":
//            return tenants.sorted { $0.queueTime < $1.queueTime } // FIXED: Now using queueTime instead of avgWaitTime
//        default:
//            return tenants
//        }
//    }
//    
//    var body: some View {
//        let columns: [GridItem] = [GridItem(.flexible())]
//        
//        NavigationStack {
//            VStack {
//                Picker("Select Building", selection: $selectedGOP) {
//                    ForEach(ArrGOP.building, id: \.name) { building in
//                        Text(building.name).tag(building.name)
//                    }
//                }
//                .pickerStyle(.segmented)
//                .padding(.horizontal)
//                
//                HStack {
//                    Spacer()
//                    Button("Sort: \(sortOption)") {
//                        showSortOptions.toggle()
//                    }
//                    .confirmationDialog("Sort By", isPresented: $showSortOptions) {
//                        Button("Price Range") { sortOption = "Price Range" }
//                        Button("Time") { sortOption = "Time" }
////                        Button("None") { sortOption = "None" }
//                    }
//                }
//                .padding(.horizontal)
//                
//                ScrollView {
//                    LazyVGrid(columns: columns) {
//                        ForEach(filteredTenants, id: \.name) { tenant in
//                            NavigationLink(destination: getMenuView(for: tenant)) {
//                                TenantCard(tenant: tenant)
//                                    .background(content: { Color.white })
//                                    .cornerRadius(10)
//                                    .shadow(radius: 2)
//                            }
//                            .onTapGesture {
//                                showDetailPage.toggle()
//                            }
//                            .sensoryFeedback(.success, trigger: showDetailPage)
//                        }
//                    }
//                    .padding(.horizontal)
//                }
//            }
//            .navigationTitle("Pick Tenant")
//            .searchable(text: $searchText, prompt: "Search tenants...")
//        }
//    }
//}
//
//@ViewBuilder
//func getMenuView(for tenant: Tenant) -> some View {
//        switch tenant.name{
//        case "Tenant A":
//            MenuViewA()
//        case "Tenant B":
//            MenuViewB()
//        case "Tenant C":
//            MenuViewC()
//        case "Tenant D":
//            MenuViewD()
//        case "Tenant E":
//            MenuViewE()
//        case "Tenant F":
//            MenuViewF()
//        case "Tenant G":
//            MenuViewG()
//        default:
//            Text("")
//        }
//    }
//
//#Preview {
//    TenantView()
//}

import SwiftUI

struct TenantView: View {
    @State var searchText: String = ""
    @State private var selectedGOP: String = "GOP 1"
    @State private var showDetailPage: Bool = false
    @State private var sortOption: String = "Time"
    
    // Get tenants for currently selected GOP
    var filteredTenants: [Tenant] {
        guard let building = ArrGOP.building.first(where: { $0.name == selectedGOP }) else {
            return []
        }
        
        var tenants = building.tenants
        
        // Apply search filter
        if !searchText.isEmpty {
            tenants = tenants.filter {
                $0.name.lowercased().contains(searchText.lowercased())
            }
        }
        
        // Apply sorting
        switch sortOption {
        case "Price Range":
            return tenants.sorted { ($0.minPrice + $0.maxPrice)/2 < ($1.minPrice + $1.maxPrice)/2 }
        case "Time":
            return tenants.sorted { $0.queueTime < $1.queueTime }
        default:
            return tenants.sorted { $0.queueTime < $1.queueTime }
        }
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
            string: "Search tenant...",
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
        }
    }
    
    private var mainContentView: some View {
        VStack {
            Spacer()
            segmentedPicker
            sortTenants
            tenantList
        }
        .navigationTitle("Pick Tenant")
        .searchable(text: $searchText, prompt: "Search tenant...")
    }
    
    private var segmentedPicker: some View {
        let picker = Picker("Select Building", selection: $selectedGOP) {
            buildingOptions
        }
        return picker
            .pickerStyle(.segmented)
            .padding(.horizontal)
            .tint(.clear)
            .background(Color.clear)
    }

    private var buildingOptions: some View {
        ForEach(ArrGOP.building, id: \.name) { building in
            buildingOption(building: building)
        }
    }

    private func buildingOption(building: Building) -> some View {
        Text(building.name)
            .tag(building.name)
            .padding(.vertical, 8)
            .frame(maxWidth: .infinity)
            .background(buildingBackground(building: building))
            .foregroundColor(buildingForeground(building: building))
            .cornerRadius(8)
    }

    private func buildingBackground(building: Building) -> Color {
        selectedGOP == building.name ? Color("EB4141") : Color("FFEAEA")
    }

    private func buildingForeground(building: Building) -> Color {
        selectedGOP == building.name ? .white : Color("EB4141")
    }
    
    private var sortTenants: some View {
        HStack {
            Spacer()
            Picker("Sort", selection: $sortOption) {
                Text("Price Range").tag("Price Range")
                Text("Time").tag("Time")
            }
            .pickerStyle(.menu)
            .tint(.blue)
        }
        .padding(.horizontal)
    }
    
    private var tenantList: some View {
        ScrollView {
            if filteredTenants.isEmpty && !searchText.isEmpty {
                noResultsView
            } else {
                LazyVGrid(columns: [GridItem(.flexible())]) {
                    ForEach(filteredTenants, id: \.name) { tenant in
                        tenantCard(for: tenant)
                    }
                }
                .padding(.horizontal)
            }
        }
    }
    
    private func tenantCard(for tenant: Tenant) -> some View {
        NavigationLink(destination: getMenuView(for: tenant)) {
            TenantCard(tenant: tenant)
                .background(content: { Color.white })
                .cornerRadius(10)
                .shadow(radius: 2)
        }
        .onTapGesture {
            showDetailPage.toggle()
        }
        .sensoryFeedback(.success, trigger: showDetailPage)
    }
    
    private var noResultsView: some View {
        VStack {
            Image(systemName: "magnifyingglass")
                .font(.system(size: 48))
                .foregroundColor(.gray)
                .padding()
            Text("No Results Found")
                .font(.title2)
                .foregroundColor(.gray)
            Text("Try a different search term")
                .font(.subheadline)
                .foregroundColor(.gray)
        }
        .frame(maxHeight: .infinity)
    }
    
    @ViewBuilder
    func getMenuView(for tenant: Tenant) -> some View {
        switch tenant.name{
        case "Tenant A":
            MenuViewA()
        case "Tenant B":
            MenuViewB()
        case "Tenant C":
            MenuViewC()
        case "Tenant D":
            MenuViewD()
        case "Tenant E":
            MenuViewE()
        case "Tenant F":
            MenuViewF()
        case "Tenant G":
            MenuViewG()
        default:
            Text("")
        }
    }
}

#Preview {
    TenantView()
}
