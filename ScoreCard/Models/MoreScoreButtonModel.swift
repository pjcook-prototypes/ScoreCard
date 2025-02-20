//
//  MoreScoreButtonModel.swift
//  ScoreCard
//
//  Created by PJ on 19/02/2025.
//

import SwiftUI

final class MoreScoreButtonModel: ObservableObject {
    @ObservedObject private var model: ScoreCardViewModel
    private let row: Int
    private let col: Int
    var score: Int {
        model.scores[row][col]
    }
    
    init(model: ScoreCardViewModel, row: Int, col: Int) {
        self.model = model
        self.row = row
        self.col = col
    }
    
    func increment() {
        model.increment(row: row, col: col)
    }
    
    func decrement() {
        model.decrement(row: row, col: col)
    }
}
