//
//  RowHeader.swift
//  ScoreCard
//
//  Created by PJ on 19/02/2025.
//

import SwiftUI

struct RowHeader: View {
    var i: Int
    
    var body: some View {
        Circle()
            .foregroundColor(Color(uiColor: .lightGray))
            .overlay {
                Text("\(i+1)")
                    .foregroundColor(.lightText)
                
            }
    }
}
