//
//  ContentView.swift
//  RouterForViewModel
//
//  Created by Michelle Grover on 6/17/23.
//

import SwiftUI

struct ContentView: View {
    @State private var navigateToDetailScreen = false
    var body: some View {
        NavigationView {
            VStack {
                
                NavigationLink(destination: UpdateProfileView(), isActive: $navigateToDetailScreen) {
                                    EmptyView()
                                }
            }
            .navigationTitle("Main Profile")
            .navigationBarItems(trailing:
                            Button {
                                navigateToDetailScreen = true
                            } label: {
                                Text("Update profile")
                            }
                        )
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
