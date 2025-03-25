//
//  SummaryCard.swift
//  FindFood
//
//  Created by Gibran Shevaldo on 25/03/25.
//

import SwiftUI

struct SummaryCard: View {
    var body: some View {
        HStack{
            Text("Hello 1")
            Spacer()
            Spacer()
            Text("Halo 2")
            Spacer()
            Text("Halo 3")
        }
        .padding(.horizontal, 10)
    }
}

#Preview {
    SummaryCard()
}
