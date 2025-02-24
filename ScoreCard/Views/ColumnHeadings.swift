//
//  ColumnHeadings.swift
//  ScoreCard
//
//  Created by PJ on 19/02/2025.
//

import SwiftUI

struct ColumnHeadings: View {
    let ballColors: [Color]
    var reset: (() -> Void)?
    
    var body: some View {
        HStack {
            Button(action: {
                reset?()
            }) {
                Circle()
                    .foregroundColor(.lightText)
                    .overlay {
                        Text("Clear")
                            .foregroundColor(.darkText)
                        
                    }
            }
            
            ForEach(ballColors, id: \.self) { color in
                Circle()
                    .foregroundColor(color)
            }
        }
    }
}
