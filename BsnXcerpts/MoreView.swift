//
//  MoreView.swift
//  BsnXcerpts
//
//  Created by Alex Burdiss on 4/12/20.
//  Copyright © 2020 Alex Burdiss. All rights reserved.
//

import SwiftUI

/**
 The View that displays additional resources and settings for the app
 */
struct MoreView: View {
    /**
     The model that stores the user preferences for the app.
     */
    @EnvironmentObject var settings: settingsModel
    
    /**
     The model that stores the user selected favorites
     */
    @EnvironmentObject var favorites: Favorites
    
    /**
     Determines whether the Resetting Favorites Alert should show
     */
    @State private var resettingFavoritesAlert = false
    
    /**
     The User interface
     */
    var body: some View {
        NavigationView {
            List {
                Section(header: Text("Random Selections")) {
                    Picker(selection: $settings.selectedRandoms, label:Text("Random Selections")) {
                        ForEach(0 ..< 2) {
                            Text(self.settings.randomOptions[$0])
                        }
                    }
                    .pickerStyle(SegmentedPickerStyle())
                }
                Section(header: Text("Favorites Settings")) {
                    Button(action: {
                        self.resettingFavoritesAlert = true
                    }) {
                        HStack {
                            Text("Reset Favorites")
                            Image(systemName: "heart.slash")
                        }
                    }
                    .alert(isPresented: $resettingFavoritesAlert) {
                        Alert(title: Text("All favorites will be removed"), message: Text("This cannot be undone!"), primaryButton: .destructive(Text("Reset")) {
                            self.resetFavorites()
                        }, secondaryButton: .cancel())
                    }
                }
                Section(header: Text("Resources")) {
                    Button(action: {
                        let url = URL(string: "https://apps.apple.com/us/app/scale-practice-randomizer/id1496727056")!
                        UIApplication.shared.open(url)
                    }) {
                        HStack {
                            Image("ScalePracticeIcon")
                            .renderingMode(.original)
                            .resizable()
                            .frame(width: 29, height: 29)
                            .mask(RoundedRectangle(cornerRadius: 7.0))
                            .overlay(
                                RoundedRectangle(cornerRadius: 7.0)
                                    .stroke(Color.gray, lineWidth: 0.3)
                            )
                            Text("Download Scale Practice - Randomizer")
                            Spacer()
                            Image(systemName: "chevron.right")
                        }
                    }
                    Button(action: {
                        let url = URL(string: "http://www.arsnovapublishing.com")!
                        UIApplication.shared.open(url)
                    }) {
                        HStack {
                            Text("Visit Ars Nova Publishing")
                            Spacer()
                            Image(systemName: "chevron.right")
                        }
                    }
                    Button(action: {
                        let url = URL(string:
                            "https://www.bandroomonline.com")!
                        UIApplication.shared.open(url)
                    }) {
                        HStack {
                            Text("Visit Band Room Online")
                            Spacer()
                            Image(systemName: "chevron.right")
                        }
                    }
                }
                Section(header: Text("About")) {
                    Text("© 2020 Alexander Burdiss")
                    Button(action: {
                        let url = URL(string: "mailto:aburdiss@icloud.com")!
                        UIApplication.shared.open(url)
                    }) {
                        HStack {
                            Text("Send Feedback")
                            Spacer()
                            Image(systemName: "chevron.right")
                        }
                    }
                }
            }
            .listStyle(GroupedListStyle())
            .navigationBarTitle("More")
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
    
    /**
     Removes all favorites from the app.
     */
    func resetFavorites() {
        self.favorites.removeAll()
    }
}

struct MoreView_Previews: PreviewProvider {
    static var previews: some View {
        MoreView()
    }
}

