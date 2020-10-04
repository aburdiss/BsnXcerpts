//
//  CompositionListView.swift
//  BsnXcerpts
//
//  Created by Alex Burdiss on 4/12/20.
//  Copyright © 2020 Alex Burdiss. All rights reserved.
//

import SwiftUI

/**
 A List of all of the compositions in the app. When each excerpt is clicked, another view is opened with the details about that excerpt. Favorites are denoted with hearts, and there is a randomize button on the navigation bar.
 */
struct CompositionListView: View {
    /**
     User selected favorites. Excerpts in this collection will have a heart next to their name.
     */
    @EnvironmentObject var favorites: Favorites
    
    /**
     The list of all of the excerpts.
     */
    var model = BassoonContentModel().excerpts
    
    /**
     The user interface
     */
    var body: some View {
        NavigationView {
            List {
                ForEach(model) { item in
                    NavigationLink(destination: CompositionDetailView(composition: item)) {
                        HStack {
                            Text(item.composerLast)
                                .bold()
                            Text(item.name)
                            Spacer()
                            if self.favorites.contains(String(item.id)) {
                                Spacer()
                                Image(systemName: "heart.fill")
                                    .accessibility(label: Text("This is a favorite exercise"))
                                    .foregroundColor(.red)
                            }
                        }
                    }
                }
            }
            .navigationBarTitle("BsnXcerpts")
            .navigationBarItems(trailing: NavigationLink(destination: RandomCompositionView()) {
                HStack {
                    Image(systemName: "cube")
                    Text("Random")
                }
            })
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct CompositionListView_Previews: PreviewProvider {
    static var previews: some View {
        CompositionListView()
            .environmentObject(Favorites())
    }
}
