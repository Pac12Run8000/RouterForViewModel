//
//  Dashboard.swift
//  RouterForViewModel
//
//  Created by Michelle Grover on 6/18/23.
//

import SwiftUI

struct DashboardView: View {
    var body: some View {
        NavigationView {
            VStack {
                ProfileSection()
                StatisticsSection()
                RecentActivitiesSection()
            }
            .navigationTitle("Dashboard")
        }
    }
}

struct ProfileSection: View {
    var body: some View {
        Section(header: Text("Profile")) {
            HStack {
                Text("Name:")
                Spacer()
                Text("John Doe")
            }
            HStack {
                Text("Role:")
                Spacer()
                Text("Admin")
            }
        }
    }
}

struct StatisticsSection: View {
    var body: some View {
        Section(header: Text("Statistics")) {
            HStack {
                Text("Total Users:")
                Spacer()
                Text("100")
            }
            HStack {
                Text("New Users Today:")
                Spacer()
                Text("5")
            }
        }
    }
}

struct RecentActivitiesSection: View {
    var body: some View {
        Section(header: Text("Recent Activities")) {
            Text("Activity 1: Login")
            Text("Activity 2: Updated Profile")
        }
    }
}

struct DashboardView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardView()
    }
}

