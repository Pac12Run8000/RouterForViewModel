//
//  ContentView.swift
//  RouterForViewModel
//
//  Created by Michelle Grover on 6/17/23.
//

import SwiftUI

struct ContentView: View {
    @State private var navigateToDetailScreen = false
    @State private var navigateToDashboardScreen = false
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination: UpdateProfileView(), isActive: $navigateToDetailScreen) {
                                    EmptyView()
                }
                NavigationLink(destination: DashboardView(), isActive: $navigateToDashboardScreen) {
                                    EmptyView()
                }
                Button {
                    self.navigateToDashboardScreen = true
                } label: {
                    Text("Present Dashboard")
                }

            }
            .navigationTitle("Main Profile")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarItems(trailing: UpdateProfileButton(navigateToDetailScreen: $navigateToDetailScreen))
            
        }
    }
}

struct PresentDashBoard: View {
    @Binding var navigateToDashboardScreen: Bool

    var body: some View {
        Button {
            navigateToDashboardScreen = true
        } label: {
            Text("Present DashBoard")
        }
    }
}

struct UpdateProfileButton: View {
    @Binding var navigateToDetailScreen: Bool

    var body: some View {
        Button {
            navigateToDetailScreen = true
        } label: {
            Text("Update profile")
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
