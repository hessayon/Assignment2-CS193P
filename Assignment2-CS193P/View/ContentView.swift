//
//  ContentView.swift
//  Assignment2-CS193P
//
//  Created by Margo Naumenko on 02.08.2021.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var viewModel: EmojiMemoryGame
    var body: some View {
        VStack{
            // Required Task 16
            HStack {
                Spacer()
                Text("Score: \(viewModel.score)")
                    .font(.title)
            }
            
            // Required Task 14
            Text(viewModel.themeName)
                .font(.largeTitle)
            Spacer()
            ScrollView{
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 70))]){
                    ForEach(viewModel.cards) { card in
                        CardView(card: card)
                            .aspectRatio(2/3, contentMode: .fill)
                            .onTapGesture {
                                viewModel.choose(card)
                            }
                    }
                }
            }
            Spacer()
            //Required Task 10
            Button{
                viewModel.startNewGame()
            } label: {
                Image(systemName: "play")
                    .font(.largeTitle)
            }
        }
        .foregroundColor(viewModel.color)
        .padding(.horizontal)
    }
}

struct CardView: View {
    var card: MemoryGame<String>.Card
    var body: some View {
        ZStack {
            let shape = RoundedRectangle(cornerRadius: 30)
            if card.isFaceUp {
                shape
                    .fill(Color.white)
                shape
                    .strokeBorder(lineWidth: 7)
                Text(card.content)
                    .font(.largeTitle)
            } else if card.isMathed {
                shape.opacity(0.0)
            } else {
                shape
                    .fill()
/*                    .fill(LinearGradient(gradient: Gradient(
                        colors: [.yellow, .red, .purple, .blue]),
                        startPoint: .top,
                        endPoint: .bottom)) // Extra Credit 3 (not sure about
                                                the correctness of the task) */
            }
        }

    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        let game = EmojiMemoryGame()
        ContentView(viewModel: game)
            .preferredColorScheme(.light)
        ContentView(viewModel: game)
            .preferredColorScheme(.dark)
    }
}
