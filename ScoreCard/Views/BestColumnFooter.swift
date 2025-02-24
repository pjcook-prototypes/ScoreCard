//
//  MoreColumnFooter.swift
//  ScoreCard
//
//  Created by PJ on 19/02/2025.
//

import SwiftUI

struct BestColumnFooter: View {
    @StateObject var scores: Scores
    
    var body: some View {
        HStack {
            Circle()
                .foregroundColor(.white)
            ForEach(0..<4) { i in
                BestFooterTotal(score: scores.totals[i])
            }
        }
    }
}
