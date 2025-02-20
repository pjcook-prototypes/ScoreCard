//
//  ButtonsView.swift
//  ScoreCard
//
//  Created by PJ on 19/02/2025.
//

import SwiftUI

struct ButtonsView: View {
    @Binding var scores: [[Int]]
    
    var body: some View {
        let columns = [
            GridItem(),
            GridItem(),
            GridItem(),
            GridItem(),
            GridItem()
        ]
        
        ScrollView {
            LazyVGrid(columns: columns, spacing: 4) {
                ForEach(0..<18) { i in
                    RowHeader(i: i)
                    
                    ForEach(0..<4) { j in
                        ScoreButton(score: $scores[i][j])
                    }
                }
            }
        }
        .scrollIndicators(.hidden)
    }
}
