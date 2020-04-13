//
//  CompositionDetailView.swift
//  BsnXcerpts
//
//  Created by Alex Burdiss on 4/12/20.
//  Copyright © 2020 Alex Burdiss. All rights reserved.
//

import SwiftUI
import WebKit
import UIKit

struct CompositionDetailView: View {
    var composition: Composition
    
    var body: some View {
        VStack {
            ScrollView(.vertical) {
                VStack(alignment: .leading) {
                    Group {
                        Text(composition.composer)
                                    .font(.headline)
                                    .italic()
                                    .padding(.horizontal)
                                Text(composition.date)
                                    .padding(.horizontal)
                            }
                            Group {
                                HStack {
                                    Text("Era:")
                                        .font(.headline)
                                    Text(composition.era)
                                }
                                .padding(.horizontal)
                                HStack {
                                    Text("Genre:")
                                        .font(.headline)
                                    Text(composition.genre)
                                }
                                .padding(.horizontal)
                                HStack {
                                    Text("Mutes:")
                                        .font(.headline)
                                    Text(composition.mutes)
                                }
                                .padding(.horizontal)
                                Divider()
                                    .background(Color.green)
                                    .padding(.horizontal)
                            }
                            // MARK: Excerpt Group
                            
                            Group {
                                ForEach(composition.excerpts) { item in
                                    Group {
                                        Text(item.description)
                                            .font(.title)
                                            .padding(.horizontal)
                                            .padding(.top)
                                        Text(item.measures)
                                            .padding(.horizontal)
                                    }
                                    ForEach(item.pictures, id:\.self) { picture in
                                        Group {
                                            Text("\(picture[0])")
                                            .padding(.horizontal)
                                            Image("\(picture[1])")
                                                .resizable()
                                                .scaledToFit()
                                                .background(Color.white)
                                        }
                                    }
                                }
                            }
                            Divider()
                                .background(Color.green)
                                .padding(.horizontal)
                                .padding(.top)
                            Text("Listen")
                                .font(.title)
                                .padding(.bottom)
                                .padding(.leading)
                            ForEach(composition.videos, id: \.self) { item in
                                VStack(alignment: .leading) {
                                    Button(action: {
                                        UIApplication.shared.open(URL(string: "https://youtu.be/\(item[1])")!)
                                    }) {
                                        Text(item[0])
                                            .padding(.horizontal)
                                            .padding(.bottom)
                                    }
                                }
                            }
                        }
                        .padding()
            }
        
        }
        .navigationBarTitle(
            Text(composition.name),
            displayMode: .inline
        )
    }
}

struct CompositionDetailView_Previews: PreviewProvider {
    static var previews: some View {
        CompositionDetailView(
            composition: brahms4
        )
    }
}
