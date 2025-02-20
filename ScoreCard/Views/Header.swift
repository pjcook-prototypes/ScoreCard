//
//  Header.swift
//  ScoreCard
//
//  Created by PJ on 19/02/2025.
//

import SwiftUI

struct Header: View {
    @Binding var gameName: String
    @FocusState private var titleIsFocused: Bool
    
    var body: some View {
        HStack {
            TextField("Title", text: $gameName)
                .font(.headline)
                .focused($titleIsFocused)
            
            Button("Done") {
                titleIsFocused = false
            }
        }
    }
}
