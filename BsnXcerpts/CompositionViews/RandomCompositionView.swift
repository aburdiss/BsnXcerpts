//
//  RandomCompositionView.swift
//  BsnXcerpts
//
//  Created by Alex Burdiss on 4/25/20.
//  Copyright © 2020 Alex Burdiss. All rights reserved.
//

import SwiftUI

struct RandomCompositionView: View {
    let allCompositions = BassoonContentModel().excerpts
    
    @State var randomComposition: Composition = beethovenleonore
    @State var randomExcerpt: Int = 0
    @State var randomPart: Int = 0
    
    var body: some View {
        ScrollView(.vertical) {
            VStack(alignment: .leading) {
                HStack {
                    Spacer()
                }
                Text(
                    randomComposition.name
                )
                    .font(.largeTitle)
                    .fixedSize(horizontal: false, vertical: true)
                Text(
                    randomComposition.composer
                )
                    .font(.headline)
                    .italic()
                    .padding(.bottom)
                Text(
                    randomComposition.date
                )
                Group {
                    HStack {
                        Text("Era:")
                            .font(.headline)
                        Text(randomComposition.era)
                    }

                    HStack {
                        Text("Genre:")
                            .font(.headline)
                        Text(randomComposition.genre)
                    }


                    Divider()
                        .background(Color.red)
                        .padding(.horizontal)
                }
                
                Text(
                    randomComposition
                        .excerpts[randomExcerpt]
                        .description
                )
                .font(.title)
                Text(
                    randomComposition
                        .excerpts[randomExcerpt]
                        .measures
                )
                Text(
                    randomComposition
                        .excerpts[randomExcerpt]
                        .pictures[randomPart][0]
                )
            }
            .padding()
           
            Image(
                randomComposition
                    .excerpts[randomExcerpt]
                    .pictures[randomPart][1]
            )
                .resizable()
                .scaledToFit()
            
            Spacer()
            
           
        }
        .onAppear() {
            self.generateExcerpt()
        }
        .navigationBarTitle("Random Excerpt", displayMode: .inline)
        .navigationBarItems(trailing: Button(action: {
            self.generateExcerpt()
        }) {
            Text("Randomize")
        })
    }
    
    func generateExcerpt() {
        randomComposition = allCompositions.randomElement()!
        
        randomExcerpt = Int.random(in: 0 ..< randomComposition.excerpts.count)
        
        randomPart = Int.random(in: 0 ..< randomComposition.excerpts[randomExcerpt].pictures.count)
    }
}

struct RandomCompositionView_Previews: PreviewProvider {
    static var previews: some View {
        RandomCompositionView()
    }
}
