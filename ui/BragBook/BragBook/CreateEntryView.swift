//
//  CreateEntryView.swift
//  BragBook
//
//  Created by Angela Mitchell on 7/23/22.
//

import SwiftUI

struct CreateEntryView: View {
    @State private var title: String = ""
    @State private var description: String = ""
//    @State private var bragTags: [BragTag] = BragTag.sampleTags
//    @State private var tagDropdownPlaceholder = "Enter tags"
    @State private var tagsQuery: String = ""
    
    @State private var isSubmitted: Bool = false
    @State private var bragTagIndex: Int = 0
    
    @State private var entryDescLabel = "Achievement Description"
    
    var body: some View {
        VStack {
            NavigationView {
                Form {
                    Group {
                        TextField("Achievement Title", text: $title)
                        TextEditor(text: $entryDescLabel)
                            .frame(height: 250)
                        TextField("Add Tag(s)", text: $tagsQuery)
                        //                        Picker("Tags", selection: $bragTagIndex) {
                        //                            ForEach(0..<$bragTags.count, id: \.self) {
                        //                                index in
                        //                                Text(self.bragTags[index].name)
                        //                            }
                        //                        }
//                        Menu {
//                            ForEach(0..<$bragTags.count, id: \.self){ index in
//                                Button(bragTags[index].name) {
//                                    self.bragTags[index].name = bragTags[index].name
//                                }
//                            }
//                        } label: {
//                            VStack(spacing: 5){
//                                HStack{
//                                    Text("Add tag(s)")
//                                    TextField(" ", text: self.bragTags[index].name)
//                                    Spacer()
//                                    Image(systemName: "chevron.down")
//                                        .foregroundColor(Color.orange)
//                                        .font(Font.system(size: 20, weight: .bold))
//                                }
//                                .padding(.horizontal)
//                            }
//                        }
                    }
                }
                .navigationBarTitle("Create Entry")
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
