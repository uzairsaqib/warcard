//
//  ContentView.swift
//  WarCard
//
//  Created by Uzair Saqib on 2023-07-01.
//

import SwiftUI

struct ContentView: View {
    
    @State var playerCard: String = "card7"
    @State var cpuCard: String = "card13"
    
    @State var playerScore:Int = 0
    @State var cpuScore:Int = 0
    
    var body: some View {
        ZStack{
            Image("background-plain")
                .resizable()
                .ignoresSafeArea()
   
            VStack {
                Spacer()
                Image("logo")
                Spacer()
                HStack {
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                Spacer()
                //Image("button")
                Button(action: {
                    deal()
                }, label: {
                    Image("button")
                })
                .foregroundColor(.white)
                Spacer()
                HStack {
                    Spacer()
                    VStack {
                        Text("Player")
                            .font(.headline)
                            .fontWeight(.bold)
                            .padding(.bottom, 10.0)
                        Text(String(playerScore))
                            .font(.largeTitle)
                    }
                    Spacer()
                    VStack {
                        Text("CPU")
                            .font(.headline)
                            .fontWeight(.bold)
                            .padding(.bottom, 10.0)
                        Text(String(cpuScore))
                            .font(.largeTitle)
                    }
                    Spacer()
                }
                .foregroundColor(.white)
                Spacer()
            }
        }
    }
    
    func deal() {
        // PlayerCard
        playerCard = "card" + String(Int.random(in: 2...14))
        
        //cpuCard
        cpuCard = "card" + String(Int.random(in: 2...14))
        
        //update scores
        
        if (playerCard > cpuCard) {
            playerScore += 1
        }
        else if (cpuCard > playerCard) {
            cpuScore += 1
        }
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
