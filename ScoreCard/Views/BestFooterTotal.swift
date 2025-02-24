//
//  BestFooterTotal.swift
//  ScoreCard
//
//  Created by PJ on 24/02/2025.
//

import SwiftUI

struct BestFooterTotal: View {
    @StateObject var score: Score
    
    var body: some View {
        Circle()
            .foregroundColor(.gray)
            .overlay {
                Text("\(score.value)")
                    .foregroundColor(.white)
            }
    }
}

#Preview {
    BestFooterTotal(score: Score(value: 1))
}
