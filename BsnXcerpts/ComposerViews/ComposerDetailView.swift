//
//  ComposerDetailView.swift
//  BsnXcerpts
//
//  Created by Alex Burdiss on 4/12/20.
//  Copyright © 2020 Alex Burdiss. All rights reserved.
//

import SwiftUI

struct ComposerDetailView: View {
    var composer: Composer
    
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
                                Rectangle()
                                    .opacity(0.0000000000000001)
                                    .frame(minWidth: 0, maxHeight: 15)
                                    .scaledToFill()
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
            displayMode: .inline)
    }
}

struct ComposerDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ComposerDetailView(composer: bach)
    }
}

