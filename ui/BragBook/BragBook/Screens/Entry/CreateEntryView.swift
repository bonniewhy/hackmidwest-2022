//
//  CreateEntryView.swift
//  BragBook
//
//  Created by Angela Mitchell on 7/23/22.
//

import SwiftUI

struct CreateEntryView: View {
    init() {
        UITableView.appearance().backgroundColor = UIColor(Color("Rose"))
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor(Color("Dark Green"))]
    }
    
    @State private var title: String = ""
    @State private var description: String = ""
    @State private var tagsQuery: String = ""
    
    @State private var isSubmitted: Bool = false
    @State private var bragTagIndex: Int = 0
    
    @State private var entryDescLabel = "Achievement Description"
    
    var body: some View {
        VStack {
            NavigationView {
                Form {
                    Section {
                        TextField("Achievement Title", text: $title)
                    }
                    Section {
                        TextEditor(text: $entryDescLabel)
                            .frame(height: 250)
                    }
                    Section {
                        TextField("Add Tag(s)", text: $tagsQuery)
                    }
                }
                .navigationBarTitle("ACHIEVEMENTS")
            }
            Button("Submit") {
                isSubmitted = true
            }
            .padding()
            Spacer()
        }
        .alert("Entry succesfully created!", isPresented: $isSubmitted) {
            Button("OK", role: .cancel) { }
        }
    }
}

struct CreateEntryView_Previews: PreviewProvider {
    static var previews: some View {
        CreateEntryView()
    }
}
