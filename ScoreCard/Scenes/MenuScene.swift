//
//  MenuScene.swift
//  ScoreCard
//
//  Created by PJ on 19/02/2025.
//

import SwiftUI

struct MenuScene: View {
    var body: some View {
        VStack {
            NavigationLink(destination: NieveScoreCardScene()) {
                Text("Nieve")
                    .frame(maxWidth: .infinity)
                    .padding(.vertical)
            }
            .buttonStyle(.borderedProminent)
            
            NavigationLink(destination: BetterScoreCardScene()) {
                Text("Better")
                    .frame(maxWidth: .infinity)
                    .padding(.vertical)
            }
            .buttonStyle(.borderedProminent)
            
            NavigationLink(destination: MoreBetterScoreCardScene()) {
                Text("More Better")
                    .frame(maxWidth: .infinity)
                    .padding(.vertical)
            }
            .buttonStyle(.borderedProminent)
        }
        .padding(.horizontal)
        .navigationTitle("Main Menu")
    }
}
