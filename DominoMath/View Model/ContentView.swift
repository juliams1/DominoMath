//
//  ContentView.swift
//  DominoMath
//
//  Created by user247327 on 15/10/23.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        ZStack {
            DominoBoard()
            // Peças para o segundo jogador (parte superior da tela)
            VStack {
                Text("Player 2")
                    .foregroundColor(.white)
                    .padding(.top)
                    .offset(x: -10, y: 355)
                    .rotationEffect(.degrees(180))
                
                
                
                HStack {
                    ForEach(Array(dominoes.prefix(6))) { dominoset in
                        Domino(domino: dominoset)
                            .rotationEffect(.degrees(180))
                    }
                    .offset(x: -10, y: -530)
                }
            }
            // Peças para o primeiro jogador (parte inferior da tela)
            
            VStack {
                
            HStack {
                ForEach(Array(dominoes.prefix(6))) { dominoset in
                    Domino(domino: dominoset)
                    
                }
                .offset(x: -10, y: 530)
            }
            Text("Player 1")
                    .font(.system(size: 20))
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                    .padding(.bottom)
                    .offset(x: -15, y: 355)

            }
            .navigationBarBackButtonHidden(true)
        }
    }
}
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
