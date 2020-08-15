//
//  ComposerDetailView.swift
//  BsnXcerpts
//
//  Created by Alex Burdiss on 4/12/20.
//  Copyright © 2020 Alex Burdiss. All rights reserved.
//

import SwiftUI

/**
 Detailed view of an individual composer in the app, also showing a list of all of their compositions.
 */
struct ComposerDetailView: View {
    /**
     The user selected favorites of the app.
     */
    @EnvironmentObject var favorites: Favorites
    
    /**
     The current composer being displayed.
     */
    var composer: Composer
    
    /**
     The user interface.
     */
    var body: some View {
        ScrollView(.vertical) {
            VStack {
                Text("\\\(composer.ipa)\\")
                    .padding()
                Image("\(composer.image)")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 250, height: 250)
                VStack(alignment: .leading) {
                    Group {
                        Text("Country: ")
                            .font(.headline)
                        + Text(composer.country)
                    }
                    .padding(.bottom)
                    Group {
                        Text("Dates: ")
                            .font(.headline)
                        + Text(composer.dates)
                    }
                    .padding(.bottom)
                    Text("About:")
                        .font(.headline)
                        .padding(.bottom)
                    Text(composer.bio)
                        .fixedSize(horizontal: false, vertical: true)
                }
            }
            .padding(.horizontal, 40)
            .padding(.bottom, 20)
            VStack {
                ForEach(composer.excerpts) { item in
                    VStack {
                        Divider()
                            .padding(.leading)
                        NavigationLink(destination: CompositionDetailView(composition: item)) {
                            HStack {
                                Text(item.name)
                                Spacer()
                                if self.favorites.contains(String(item.id)) {
                                    Spacer()
                                    Image(systemName: "heart.fill")
                                        .accessibility(label: Text("This is a favorite exercise"))
                                        .foregroundColor(.red)
                                }
                                Image(systemName: "chevron.right")
                                    .foregroundColor(.gray)
                            }
                            .padding(.top, 6)
                            .padding(.bottom, 3)
                            .padding(.horizontal)
                        }
                        .buttonStyle(PlainButtonStyle())
                    }
                }
                Divider()
                    .padding(.leading)
            }
        }
        .navigationBarTitle(
            Text(composer.name),
            displayMode: .inline
        )
    }
}

struct ComposerDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ComposerDetailView(composer: beethoven)
    }
}

