//
//  MoreBetterScoreCard.swift
//  ScoreCard
//
//  Created by PJ on 17/02/2025.
//

import SwiftUI

struct MoreBetterScoreCardScene: View {
    @StateObject var viewModel: ScoreCardViewModel = ScoreCardViewModel()
    
    var body: some View {
        VStack {
            Header(gameName: $viewModel.gameName)
            
            ColumnHeadings(ballColors: viewModel.ballColors, reset: viewModel.reset)
            
            MoreButtonsView(viewModel: viewModel)
            
            MoreColumnFooter(viewModel: viewModel)
        }
        .padding()
        .navigationTitle("More Better")
    }
}

#Preview {
    MoreBetterScoreCardScene()
}
