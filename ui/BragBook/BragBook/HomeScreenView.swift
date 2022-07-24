//
//  HomeScreen.swift
//  BragBook
//
//  Created by Liz Wait on 7/23/22.
//

import SwiftUI

struct HomeScreenView: View {
    var bragUser: Person
    var body: some View {
        VStack {
            Image("codergirl")
                .resizable()
                .scaledToFit()
                .clipShape(Circle())
            HStack {
                Text(bragUser.firstName)
                    .font(.headline)
                Text(bragUser.lastName)
                    .font(.headline)
            }
            List {
                ForEach(bragUser.entries, id: \.self) { entry in
                    EntryCardView(bragEntry: entry)
                }
            }
        }
        .padding()
    }
}

struct HomeScreenView_Previews: PreviewProvider {
    static var bragUser = Person.samplePerson
    static var previews: some View {
        NavigationView {
            HomeScreenView(bragUser: Person.samplePerson)
        }
    }
}

