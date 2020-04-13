//
//  ContentView.swift
//  BsnXcerpts
//
//  Created by Alex Burdiss on 4/12/20.
//  Copyright © 2020 Alex Burdiss. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            CompositionListView()
                .tabItem {
                    Image(systemName: "book")
                    Text("Excerpts")
            }
            ComposerListView()
                .tabItem {
                    Image(systemName: "person.3")
                    Text("Composers")
            }
            MoreView()
                // TODO: Update color based on App Icon.
                .tabItem {
                    Image(systemName: "gear")
                    Text("More")
            }
        }
        .accentColor(Color.green)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

