//
//  MoreScoreButton.swift
//  ScoreCard
//
//  Created by PJ on 19/02/2025.
//

import SwiftUI

struct BestScoreButton: View {
    @StateObject var score: Score
    @State private var canTap = true
    var valueChanges: (() -> Void)?
    
    var body: some View {
        Button {
            guard canTap else {
                canTap = true
                return
            }
            score.value += 1
            valueChanges?()
        } label: {
            Text("\(score.value)")
                .padding(24)
                .foregroundColor(.lightText)
        }
        .simultaneousGesture(LongPressGesture().onEnded({ _ in
            canTap = false
            score.value -= 1
            valueChanges?()
        }))
        .background {
            RoundedRectangle(cornerSize: CGSize(width: 8, height: 8))
        }
    }
}
