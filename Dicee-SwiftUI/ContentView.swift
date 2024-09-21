//
//  ContentView.swift
//  Dicee-SwiftUI
//
//  Created by Alejandro Alfaro on 14/09/24.
//

import SwiftUI

struct ContentView: View {
    
    // This has to be marked as State
    // otherwise it won't be able to
    // mutate
    @State var leftDiceNumber = 1
    @State var rightDiceNumber = 1
    
    var body: some View {
        ZStack {
            
            Image("background")
                .resizable()
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack {
                Image("diceeLogo")
                Spacer()
                HStack() {
                    DiceView(number: leftDiceNumber)
                    DiceView(number: rightDiceNumber)
                }
                Spacer()
                Button("Roll") {
                    print("rolling")
                    self.leftDiceNumber = Int.random(in: 1...6)
                    self.rightDiceNumber = Int.random(in: 1...6)
                }
                .padding(.horizontal)
                .background(Color(.red))
                .foregroundColor(.white)
                .font(.system(size: 50))
                .fontWeight(.heavy)
                

            }
            .padding()
        }
        
    }
}

struct DiceView: View {
    let number: Int
    var body: some View {
        Image("dice\(number)")
    }
}

#Preview {
    ContentView()
}
