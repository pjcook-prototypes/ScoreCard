//
//  BestScoreCardViewModel.swift
//  ScoreCard
//
//  Created by PJ on 24/02/2025.
//

import SwiftUI

final class BestScoreCardViewModel: ObservableObject {
    let ballColors = [Color.red, Color.blue, Color.yellow, Color.green]
    @Published var gameName: String
    @Published var scores: Scores
    
    init() {
        self.gameName = ""
        self.scores = Scores()
    }
    
    func scoreFor(row: Int, col: Int) -> Score {
        scores.scoreFor(row: row, col: col)
    }
    
    func reset() {
        gameName = ""
        scores.reset()
    }
}

final class Scores: ObservableObject {
    let rows = 18
    let columns = 4
    @Published var scores: [Score]
    @Published var totals: [Score]
    
    init() {
        self.scores = []
        self.totals = []
        for _ in 0..<(18*4) {
            scores.append(Score())
        }
        for _ in 0..<4 {
            totals.append(Score())
        }
    }
    
    func reset() {
        scores.forEach { $0.value = 0 }
        totals.forEach { $0.value = 0 }
    }
    
    func scoreFor(row: Int, col: Int) -> Score {
        scores[rows * col + row]
    }
    
    func calculateTotal(for col: Int) {
        var total = 0
        for row in 0..<rows {
            total += scoreFor(row: row, col: col).value
        }
        totals[col].value = total
    }
}

final class Score: ObservableObject {
    @Published var value: Int
    
    init(value: Int = 0) {
        self.value = value
    }
}
