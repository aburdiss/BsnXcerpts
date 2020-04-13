//
//  CompositionListView.swift
//  BsnXcerpts
//
//  Created by Alex Burdiss on 4/12/20.
//  Copyright © 2020 Alex Burdiss. All rights reserved.
//

import SwiftUI

struct CompositionListView: View {
    
    var model = BassoonContentModel().excerpts
    
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
                        }
                    }
                }
            }
        .navigationBarTitle("BsnXcerpts")
//        .navigationBarItems(trailing:
//            NavigationLink(destination: FavoriteExcerpts()) {
//                HStack {
//                    Image(systemName: "star")
//                    Text("Favorites")
//                }
//            })
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct CompositionListView_Previews: PreviewProvider {
    static var previews: some View {
        CompositionListView()
    }
}
