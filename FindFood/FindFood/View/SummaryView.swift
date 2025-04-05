//
//  SummaryView.swift
//  FindFood
//
//  Created by Gibran Shevaldo on 25/03/25.
//
import SwiftUI

struct SummaryView: View {
    @Binding var originalMenus: [Menu]  // Binding to original data source
    @State var selectedMenus: [Menu]
    @State private var showDeleteConfirmation = false
    
    var totalPrice: Int {
        selectedMenus.reduce(0) { $0 + ($1.price * $1.quantity) }
    }
    
    var hasSelectedItems: Bool {
        !selectedMenus.isEmpty
    }
    
    var body: some View {
        NavigationStack {
            ZStack {
                VStack {
                    HStack {
                        Text("\(selectedMenus.reduce(0) { $0 + $1.quantity }) Items")
                        Spacer()
                        Text("Total:")
                        Text("Rp\(totalPrice).000")
                            .fontWeight(.bold)
                    }
                    .padding(.horizontal, 20)
                    .padding(.top)
                    
                    ScrollView {
                        LazyVStack(spacing: 10) {
                            ForEach(selectedMenus, id: \.name) { menu in
                                SummaryCard(menu: menu)
                            }
                        }
                        .padding(.horizontal, 10)
                    }
                }
                
                if hasSelectedItems {
                    VStack {
                        Spacer()
                        HStack {
                            Spacer()
                            Button("CLEAR ALL") {
                                showDeleteConfirmation = true
                            }
                            .frame(width: 100)
                            .alert("CONFIRMATION", isPresented: $showDeleteConfirmation) {
                                Button("Clear All", role: .destructive) {
                                    resetAllSelections()
                                }
                                Button("Cancel", role: .cancel) {}
                            } message: {
                                Text("This will reset all selected items. Continue?")
                                    .font(.body)
                            }
                            Spacer()
                        }
                        .frame(height: 100)
                        .transition(.move(edge: .bottom))
                    }
                }
            }
            .navigationTitle("Calculation Summary")
            .animation(.easeInOut, value: hasSelectedItems)
        }
    }
    
    private func resetAllSelections() {
        for index in originalMenus.indices {
            originalMenus[index].quantity = 0
        }
        selectedMenus = []
    }
}
