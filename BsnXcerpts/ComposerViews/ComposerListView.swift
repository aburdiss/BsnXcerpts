//
//  ComposerListView.swift
//  BsnXcerpts
//
//  Created by Alex Burdiss on 4/12/20.
//  Copyright © 2020 Alex Burdiss. All rights reserved.
//

import SwiftUI

/**
 A listing of all of the composers in the app. On click opens ComposerDetailView with information about the selected composer.
 */
struct ComposerListView: View {
    /**
     The collected list of all of the composers in the app.
     */
    var model = BassoonContentModel().composers
    
    /**
     The user interface
     */
    var body: some View {
        NavigationView {
            List {
                ForEach(model) { item in
                    NavigationLink(destination: ComposerDetailView(composer: item)) {
                        Text(item.name)
                    }
                }
            }
            .navigationBarTitle("Composers")
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct ComposerListView_Previews: PreviewProvider {
    static var previews: some View {
        ComposerListView()
    }
}
