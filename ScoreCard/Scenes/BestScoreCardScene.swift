//
//  MoreBetterScoreCard.swift
//  ScoreCard
//
//  Created by PJ on 17/02/2025.
//

import SwiftUI

struct BestScoreCardScene: View {
    @StateObject var viewModel: BestScoreCardViewModel = BestScoreCardViewModel()
    
    var body: some View {
        VStack {
            Header(gameName: $viewModel.gameName)
            
            ColumnHeadings(ballColors: viewModel.ballColors, reset: viewModel.reset)
            
            BestButtonsView(scores: viewModel.scores)
            
            BestColumnFooter(scores: viewModel.scores)
        }
        .padding()
        .navigationTitle("Best")
    }
}

#Preview {
    BestScoreCardScene()
}
