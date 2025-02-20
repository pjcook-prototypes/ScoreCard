//
//  ColumnHeadings.swift
//  ScoreCard
//
//  Created by PJ on 19/02/2025.
//

import SwiftUI

struct ColumnHeadings: View {
    @ObservedObject var viewModel: ScoreCardViewModel
    
    var body: some View {
        HStack {
            Button(action: {
                viewModel.reset()
            }) {
                Circle()
                    .foregroundColor(.white)
                    .overlay {
                        Text("Clear")
                            .foregroundColor(.black)
                        
                    }
            }
            
            ForEach(viewModel.ballColors, id: \.self) { color in
                Circle()
                    .foregroundColor(color)
            }
        }
    }
}
