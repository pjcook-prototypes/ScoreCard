//
//  BetterScoreCard.swift
//  ScoreCard
//
//  Created by PJ on 17/02/2025.
//

import SwiftUI

struct BetterScoreCardScene: View {
    @StateObject var viewModel: ScoreCardViewModel = ScoreCardViewModel()
    
    var body: some View {
        VStack {
            Header(gameName: $viewModel.gameName)
            
            ColumnHeadings(ballColors: viewModel.ballColors, reset: viewModel.reset)
            
            ButtonsView(scores: $viewModel.scores)
            
            ColumnFooter(scores: $viewModel.scores)
        }
        .padding()
        .navigationTitle("Better")
    }
}

#Preview {
    BetterScoreCardScene()
}
