//
//  NavigationComponent.swift
//  BragBook
//
//  Created by Liz Wait on 7/23/22.
//

import SwiftUI

struct NavigationComponent: View {
    @State private var selectedTab = "One"

    var body: some View {
        
        VStack(spacing: 0) {
            HStack {
                TabView(selection: $selectedTab) {
                    HomeScreenView(bragUser: BragUser.sampleUsers[0])
                        .tabItem {
                            Label("Home", systemImage: "house.circle.fill")
                        }
                    EntryMainView()
                        .tabItem {
                            Label("Entries", systemImage: "pencil.circle.fill")
                            }
                    ProfileView()
                        .tabItem {
                            Label("Profile", systemImage: "person.circle.fill")
                            }
                    JourneyView()
                        .tabItem {
                            Label("Journey", systemImage: "book.closed.circle.fill")
                            }
                }
                .accentColor(Color("Dark Orange"))
            }
        }
    }
}

struct NavigationComponent_Previews: PreviewProvider {
    static var previews: some View {
        NavigationComponent()
    }
}
