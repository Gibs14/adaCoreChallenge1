//
//  SummaryView.swift
//  FindFood
//
//  Created by Gibran Shevaldo on 25/03/25.
//

import SwiftUI

struct SummaryView: View {
    
    var body: some View {
        let columns: [GridItem] = [GridItem(.flexible())]
        NavigationStack{
            HStack{
                Text("p1")
                Spacer()
                Spacer()
                Text("p2")
                Spacer()
                Text("p3")
            }
            .padding(.horizontal, 20)
            
            ScrollView{
                LazyVGrid(columns: columns) {
                    SummaryCard()
                    
                }
            }
            .navigationTitle("Order Summary")
            
        }
    }
}

#Preview { //Menampilkan preview HP 1:1 di kanan
    SummaryView()
}
