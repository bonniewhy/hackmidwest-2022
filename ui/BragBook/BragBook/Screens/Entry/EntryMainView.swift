//
//  EntryMainView.swift
//  BragBook
//
//  Created by Liz Wait on 7/24/22.
//

import SwiftUI

struct EntryMainView: View {
    let entries: [FakeEntry]

    var body: some View {
        ScrollView {
            VStack {
                Text("ACHIEVEMENTS")
                    .foregroundColor(Color("Dark Green"))
                    .font(.system(size: 30, weight: .semibold))
                    .frame(maxWidth: .infinity, alignment: .center)

                ForEach(entries) {
                    EntryCardView(bragEntry: $0)
                }
                
                Spacer()
            }
        }
        .background(Color("orange"))
        .navigationBarItems(leading:
                                Image(systemName: "chevron.backward").foregroundColor(Color("Dark Green"))
                                    .font(.system(size: 30, weight: .regular))
                                    .padding(.leading, 20),
                            trailing:
                                Image(systemName: "plus").foregroundColor(Color("Dark Green"))
                                    .font(.system(size: 30, weight: .regular))
                                    .padding(.trailing, 20))
    }
}
//
//struct EntryMainView_Previews: PreviewProvider {
//    static var previews: some View {
//        EntryMainView()
//    }
//}
