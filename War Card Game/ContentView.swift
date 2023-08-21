//
//  ContentView.swift
//  War Card Game
//
//  Created by Piyush Acharya on 7/26/23.
//

import SwiftUI

struct ContentView: View {
    @State private var playerCard = "card2"
    @State private var cpuCard  = "card3"
    
    @State private var playerScore = 0
    @State private var cpuScore = 0
    
    var body: some View {
        ZStack {
            Image("background-plain")
            VStack {
                Image("logo")
                    .padding(.bottom, 20.0)
                HStack {
                    Image(playerCard)
                        .padding(.horizontal, 20.0)
                    Image(cpuCard)
                        .padding(.horizontal, 20.0)
                }
                .padding(.bottom, 20.0)
                
                Button(action: {
                    deal()
                }, label: {
                    Image("button")
                })
                .padding(.bottom, 20.0)
                
                HStack(spacing: 0.0) {
                    Text("Player")
                    Spacer()
                    Text("CPU")
                }
                .foregroundColor(.white)
                .font(.title3)
                .fontWeight(.heavy)
                .padding(.horizontal, 75)
                
                HStack(spacing: 0.0) {
                    Text(String(playerScore))
                    Spacer()
                    Text(String(cpuScore))
                }
                .foregroundColor(.white)
                .font(.title3)
                .fontWeight(.heavy)
                .padding(.horizontal, 90.0)
            }
            .padding()
        }
    }
    
    func deal() {
        // Update cards
        let playerCardValue = Int.random(in: 2...14)
        let cpuCardValue = Int.random(in: 2...14)
        playerCard = "card" + String(playerCardValue)
        cpuCard = "card" + String(cpuCardValue)
        
        // Update scores
        if (playerCardValue > cpuCardValue) {
            playerScore += 1
        } else if (playerCardValue < cpuCardValue) {
            cpuScore += 1
        }
    }
}

#Preview {
    ContentView()
}
