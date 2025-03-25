//
//  TenantView.swift
//  FindFood
//
//  Created by Gibran Shevaldo on 25/03/25.
//

import SwiftUI

struct TenantView: View {
    
    @State var searchText: String = ""
    @State private var selectedGOP: GOPBuilding = .gop1
    @State private var showDetailPage: Bool = false
    
    enum GOPBuilding: String, CaseIterable {
            case gop1 = "GOP 1"
            case gop6 = "GOP 6"
            case gop9 = "GOP 9"
    }
    
    var filteredView: [Tenant] {
        guard !searchText.isEmpty else {
            return TenantArray.tenant
        }
        return TenantArray.tenant.filter{
            $0.name.lowercased().contains(searchText.lowercased())
        }
    }
    
    var body: some View {
        let columns: [GridItem] = [GridItem(.flexible())] //Grid
        
        
        NavigationStack{
            Spacer()
            
            HStack{
                Spacer()
                Text("Button Sort")
            }
            
            Picker("Select Building", selection: $selectedGOP) {
                ForEach(GOPBuilding.allCases, id: \.self) { gop in
                    Text(gop.rawValue).tag(gop)
                }
            }
            .pickerStyle(.segmented)
            .padding(.horizontal)
            
            ScrollView{
                LazyVGrid(columns: columns) {
                    ForEach(filteredView, id: \.self) { tenant in
                        NavigationLink(destination: MenuView()) {
                        TenantCard(tenant: tenant)
                            .shadow(radius: 10)
                            .onTapGesture {
                                showDetailPage.toggle()
                            }
                            .sensoryFeedback(.success, trigger: showDetailPage)
                        }
                    }
                    
                }
            }
            .navigationTitle("Pick Tenant~")
        }.searchable(text: $searchText, prompt: "Search")
            .padding(.horizontal, 10)
    }
}

#Preview { //Menampilkan preview HP 1:1 di kanan
    TenantView()
}
