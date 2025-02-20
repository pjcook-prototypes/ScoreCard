//
//  ScoreCardViewModel.swift
//  ScoreCard
//
//  Created by PJ on 19/02/2025.
//

import SwiftUI

final class ScoreCardViewModel: ObservableObject {
    let ballColors = [Color.red, Color.blue, Color.yellow, Color.green]
    @Published var gameName: String
    @Published var scores: [[Int]] = Array(repeating: Array(repeating: 0, count: 5), count: 18)
    
    init(gameName: String, scores: [[Int]]) {
        self.gameName = gameName
    }
    
    init() {
        self.gameName = ""
    }
    
    func increment(row: Int, col: Int) {
        scores[row][col] += 1
        objectWillChange.send()
    }
    
    func decrement(row: Int, col: Int) {
        guard scores[row][col] > 0 else { return }
        scores[row][col] -= 1
        objectWillChange.send()
    }
    
    func reset() {
        gameName = ""
        scores = Array(repeating: Array(repeating: 0, count: 5), count: 18)
        objectWillChange.send()
    }
}
