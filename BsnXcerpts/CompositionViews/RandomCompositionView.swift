//
//  RandomCompositionView.swift
//  BsnXcerpts
//
//  Created by Alex Burdiss on 4/25/20.
//  Copyright © 2020 Alex Burdiss. All rights reserved.
//

import SwiftUI

/**
 A view of a random excerpt from a random composition. Logic for randomizing the composition is also dealt with in this view
 */
struct RandomCompositionView: View {
    /**
     The user selected settings for the app.
     */
    @EnvironmentObject var settings: settingsModel
    
    /**
     The user selected favorites for the app.
     */
    @EnvironmentObject var favorites: Favorites
    
    /**
     The complete list of excerpts for the app.
     */
    let allCompositions = BassoonContentModel().excerpts
    
    /**
     An array holding the user selected favorite compositions.
     */
    @State var favoriteCompositions: [Composition] = []
    
    /**
     The currently selected random composition.
     */
    @State var randomComposition: Composition = beethovenleonore
    
    /**
     The index of the random excerpt from the favoriteCompositions array.
     */
    @State var randomExcerpt: Int = 0
    
    /**
     The index of the random part from the randomExcerpt.
     */
    @State var randomPart: Int = 0
    
    /**
     The user interface
     */
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
            self.populateFavorites()
            self.generateExcerpt()
        }
        .navigationBarTitle("Random Excerpt", displayMode: .inline)
        .navigationBarItems(trailing: Button(action: {
            self.generateExcerpt()
        }) {
            Text("Randomize")
        })
    }
    
    /**
     Runs on view load. Filters all excerpts by searching favorites and appending favorites to favoritesArray.
     */
    func populateFavorites() {
        var favoritesArray: [Composition] = []
        
        for composition in allCompositions {
            if (favorites.contains(String(composition.id))) {
                favoritesArray.append(composition)
            }
        }
        self.favoriteCompositions = favoritesArray
    }
    
    /**
     Runs on view load and navigation bar button press. Generates a new random excerpt that is different from the previous excerpt, if there are more than one excerpts selected.
     */
    func generateExcerpt() {
        var tempRandomComposition: Composition
        
        if settings.selectedRandoms == 1 && favoriteCompositions.count > 0 {
            repeat {
                tempRandomComposition = favoriteCompositions.randomElement()!
            } while (tempRandomComposition.id == randomComposition.id && favoriteCompositions.count > 1)
        } else {
            repeat {
                tempRandomComposition = allCompositions.randomElement()!
            } while (tempRandomComposition.id == randomComposition.id )
        }
        randomComposition = tempRandomComposition
        randomExcerpt = Int.random(in: 0 ..< randomComposition.excerpts.count)
        randomPart = Int.random(in: 0 ..< randomComposition.excerpts[randomExcerpt].pictures.count)
    }
}

struct RandomCompositionView_Previews: PreviewProvider {
    static var previews: some View {
        RandomCompositionView()
    }
}
