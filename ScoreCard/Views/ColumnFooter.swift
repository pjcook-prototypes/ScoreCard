//
//  ColumnFooter.swift
//  ScoreCard
//
//  Created by PJ on 19/02/2025.
//

import SwiftUI

struct ColumnFooter: View {
    @Binding var scores: [[Int]]
    
    var body: some View {
        HStack {
            Circle()
                .foregroundColor(.white)
            ForEach(0..<4) { i in
                Circle()
                    .foregroundColor(.gray)
                    .overlay {
                        Text("\(total(for: i))")
                            .foregroundColor(.white)
                    }
            }
        }
    }
    
    private func total(for column: Int) -> Int {
        scores.reduce(0) { $0 + $1[column] }
    }
}
