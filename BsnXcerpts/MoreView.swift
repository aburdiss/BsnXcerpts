//
//  MoreView.swift
//  BsnXcerpts
//
//  Created by Alex Burdiss on 4/12/20.
//  Copyright © 2020 Alex Burdiss. All rights reserved.
//

import SwiftUI

struct MoreView: View {
    var body: some View {
        NavigationView {
            ScrollView(.vertical) {
                VStack(alignment: .center) {
                    HStack {
                        Spacer()
                        Text("App Design and Content by Alexander Burdiss and Qian Yu")
                            .multilineTextAlignment(.center)
                            .padding()
                        Spacer()
                    }
                    
                    Button(action: {
                        let url = URL(string: "mailto:aburdiss@gmail.com")!
                        UIApplication.shared.open(url)
                    }) {
                        Text("Send Feedback")
                            .padding()
                            .overlay(RoundedRectangle(cornerRadius: 12)
                            .stroke(Color.red, lineWidth: 1))
                            .padding()
                    }
                    
                    Button(action: {
                        let url = URL(string:
                            "https://www.bandroomonline.com")!
                        UIApplication.shared.open(url)
                    }) {
                        HStack {
                            Text("Visit ")
                            + Text("Band Room Online")
                            .italic()
                        }
                            .padding()
                            .overlay(RoundedRectangle(cornerRadius:12)
                            .stroke(Color.red, lineWidth: 1))
                            .padding(.bottom, 80)
                    }
                    
                    Spacer()
                    
                    HStack {
                        Image("reflectionsCover")
                            .resizable()
                                .scaledToFit()
                                .frame(height: 150)
                        Button(action: {
                            let url = URL(string: "https://www.arsnovapublishing.com")!
                            UIApplication.shared.open(url)
                        }) {
                            VStack(alignment: .leading) {
                                Text("Ars Nova Publishing")
                                    .font(.headline)
                                Text("Refreshing, daring new works for Bassoon. Visit our website to learn more, or to see some of our other projects.")
                                    .font(.caption)
                                    .padding(.vertical)
                            }
                        }
                    }
                    
                    Text("© 2020 Alexander Burdiss & Qian Yu")
                        .padding()
                }
                    .navigationBarTitle("More")
            }
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct MoreView_Previews: PreviewProvider {
    static var previews: some View {
        MoreView()
    }
}

