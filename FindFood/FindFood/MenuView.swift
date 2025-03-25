//
//  MenuView.swift
//  FindFood
//
//  Created by Gibran Shevaldo on 25/03/25.
//

import SwiftUI

struct MenuView: View {
    
    @State var searchText: String = ""
    
    var filteredView: [Menu] {
        guard !searchText.isEmpty else {
            return MenuArray.menu
        }
        return MenuArray.menu.filter{
            $0.name.lowercased().contains(searchText.lowercased())
        }
    }
    
    var body: some View {
        let columns: [GridItem] = [GridItem(.flexible())] //Grid
        NavigationStack{
            ScrollView{
                LazyVGrid(columns: columns) {
                    ForEach(filteredView, id: \.self){ Menu in
                        MenuCard(menu: Menu)}
                }
            }
            .navigationTitle("Pick Menu~")
        }.searchable(text: $searchText, prompt: "Search")
        .padding(.horizontal, 10)
    }
    
    
}

#Preview { //Menampilkan preview HP 1:1 di kanan
    MenuView()
}
