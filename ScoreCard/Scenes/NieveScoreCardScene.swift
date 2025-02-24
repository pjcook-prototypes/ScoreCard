//
//  ContentView.swift
//  ScoreCard
//
//  Created by PJ on 12/02/2025.
//

import SwiftUI

struct NieveScoreCardScene: View {
    @State private var gameName: String = ""
    @State private var scores: [[Int]] = Array(repeating: Array(repeating: 0, count: 5), count: 18)
    @State private var ballColors = [Color.red, Color.blue, Color.yellow, Color.green]
    
    var body: some View {
        VStack {
            TextField("Title", text: $gameName)
                .font(.headline)
            
            HStack {
                Button(action: {
                    reset()
                }) {
                    Circle()
                        .foregroundColor(.white)
                        .overlay {
                            Text("Clear")
                                .foregroundColor(.black)
                            
                        }
                }
                
                ForEach(ballColors, id: \.self) { color in
                    Circle()
                        .foregroundColor(color)
                }
            }
            
            let columns = [
                GridItem(),
                GridItem(),
                GridItem(),
                GridItem(),
                GridItem()
            ]
            
            ScrollView {
                LazyVGrid(columns: columns, spacing: 4) {
                    ForEach(0..<18) { i in
                        Circle()
                            .foregroundColor(Color(uiColor: .lightGray))
                            .overlay {
                                Text("\(i+1)")
                                    .foregroundColor(.white)
                                
                            }

                        Button {
                            scores[i][0] += 1
                        } label: {
                            Text("\(scores[i][0])")
                                .padding(24)
                                .foregroundColor(.white)
                        }
                        .background {
                            RoundedRectangle(cornerSize: CGSize(width: 8, height: 8))
                        }
                        
                        
                        Button {
                            scores[i][1] += 1
                        } label: {
                            Text("\(scores[i][1])")
                                .padding(24)
                                .foregroundColor(.white)
                        }
                        .background {
                            RoundedRectangle(cornerSize: CGSize(width: 8, height: 8))
                        }
                        
                        Button {
                            scores[i][2] += 1
                        } label: {
                            Text("\(scores[i][2])")
                                .padding(24)
                                .foregroundColor(.white)
                        }
                        .background {
                            RoundedRectangle(cornerSize: CGSize(width: 8, height: 8))
                        }
                        
                        Button {
                            scores[i][3] += 1
                        } label: {
                            Text("\(scores[i][3])")
                                .padding(24)
                                .foregroundColor(.white)
                        }
                        .background {
                            RoundedRectangle(cornerSize: CGSize(width: 8, height: 8))
                        }
                    }
                }
            }
            
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
        .padding()
        .navigationTitle("Nieve")
    }
    
    private func reset() {
        gameName = ""
        scores = Array(repeating: Array(repeating: 0, count: 5), count: 18)
    }
    
    private func total(for column: Int) -> Int {
        scores.reduce(0) { $0 + $1[column] }
    }
}

#Preview {
    NieveScoreCardScene()
}
