//
//  MoreButtonsView.swift
//  ScoreCard
//
//  Created by PJ on 19/02/2025.
//

import SwiftUI

struct MoreButtonsView: View {
    @ObservedObject var viewModel: ScoreCardViewModel
    
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
                    Circle()
                        .overlay {
                            Text("\(i+1)")
                                .foregroundColor(.white)
                            
                        }
                    
                    ForEach(0..<4) { j in
                        MoreScoreButton(viewModel: MoreScoreButtonModel(model: viewModel, row: i, col: j))
                    }
                }
            }
        }
        .scrollIndicators(.hidden)
    }
}
