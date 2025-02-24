//
//  ScoreButton.swift
//  ScoreCard
//
//  Created by PJ on 19/02/2025.
//

import SwiftUI

struct ScoreButton: View {
    @Binding var score: Int
    @State private var canTap = true
    
    var body: some View {
        Button {
            guard canTap else {
                canTap = true
                return
            }
            score += 1
        } label: {
            Text("\(score)")
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .foregroundColor(.lightText)
        }
        .simultaneousGesture(LongPressGesture().onEnded({ _ in
            canTap = false
            score = max(0, score - 1)
        }))
        .background {
            RoundedRectangle(cornerSize: CGSize(width: 8, height: 8))
        }
    }
}
