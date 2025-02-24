//
//  MoreButtonsView.swift
//  ScoreCard
//
//  Created by PJ on 19/02/2025.
//

import Combine
import SwiftUI

struct BestButtonsView: View {
    @StateObject var scores: Scores
    var cancellables: Set<AnyCancellable> = []
    
    var body: some View {
        let columns = [
            GridItem(),
            GridItem(),
            GridItem(),
            GridItem(),
            GridItem()
        ]
        
        VStack {
            ScrollView {
                LazyVGrid(columns: columns, spacing: 4) {
                    ForEach(0..<scores.rows) { i in
                        RowHeader(i: i)
                        
                        ForEach(0..<scores.columns) { j in
                            BestScoreButton(score: scores.scoreFor(row: i, col: j)) {
                                scores.calculateTotal(for: j)
                            }
                        }
                    }
                }
            }
            .scrollIndicators(.hidden)
        }
    }
}
