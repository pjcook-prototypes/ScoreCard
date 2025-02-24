//
//  MoreColumnFooter.swift
//  ScoreCard
//
//  Created by PJ on 19/02/2025.
//

import SwiftUI

struct MoreColumnFooter: View {
    @ObservedObject var viewModel: ScoreCardViewModel
    
    var body: some View {
        HStack {
            Circle()
                .foregroundColor(.lightText)
            ForEach(0..<4) { i in
                Circle()
                    .foregroundColor(.gray)
                    .overlay {
                        Text("\(total(for: i))")
                            .foregroundColor(.lightText)
                    }
            }
        }
    }
    
    private func total(for column: Int) -> Int {
        viewModel.scores.reduce(0) { $0 + $1[column] }
    }
}
