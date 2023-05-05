//
//  ContentView.swift
//  Dice-it
//
//  Created by Md. Mahinur Rahman on 5/5/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var leftDiceNumber = 1
    @State var rightDiceNumber = 1
    
    var body: some View {
        ZStack{
            Image("background")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            
            VStack{
                Image("diceeLogo")
                    .padding(.bottom)
                
                Spacer()
                
                HStack{
                    DiceView(number: leftDiceNumber)
                    DiceView(number: rightDiceNumber)
                }
                
                Spacer()
                
                Button {
                    self.leftDiceNumber = Int.random(in: 1...6)
                    self.rightDiceNumber = Int.random(in: 1...6)
                } label: {
                    Text("Roll")
                        .font(.system(size: 50))
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                        .padding(.horizontal)
                }
                .background(Color.red)
            }
        }
    }
}

struct DiceView: View {
    let number:Int
    var body: some View {
        Image("dice\(number)")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 150)
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
