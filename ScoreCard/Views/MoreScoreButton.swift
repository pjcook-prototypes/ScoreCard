//
//  MoreScoreButton.swift
//  ScoreCard
//
//  Created by PJ on 19/02/2025.
//

import SwiftUI

struct MoreScoreButton: View {
    @StateObject var viewModel: MoreScoreButtonModel
    @State private var canTap = true
    
    var body: some View {
        Button {
            guard canTap else {
                canTap = true
                return
            }
            viewModel.increment()
        } label: {
            Text("\(viewModel.score)")
                .padding(24)
                .foregroundColor(.lightText)
        }
        .simultaneousGesture(LongPressGesture().onEnded({ _ in
            canTap = false
            viewModel.decrement()
        }))
        .background {
            RoundedRectangle(cornerSize: CGSize(width: 8, height: 8))
        }
    }
}
