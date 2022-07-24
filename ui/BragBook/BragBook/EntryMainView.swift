//
//  EntryMainView.swift
//  BragBook
//
//  Created by Liz Wait on 7/24/22.
//

import SwiftUI

struct EntryMainView: View {
    var body: some View {
        ScrollView {
            VStack {
                HStack {
                    Image(systemName: "chevron.backward").foregroundColor(Color("Dark Green"))
                        .font(.system(size: 30, weight: .regular))
                        .padding(.leading, 20)
                    Spacer()
                    Image(systemName: "plus").foregroundColor(Color("Dark Green"))
                        .font(.system(size: 30, weight: .regular))
                        .padding(.trailing, 20)
                }
                .padding(.bottom, 20)
                
                Text("ACHIEVEMENTS")
                    .foregroundColor(Color("Dark Green"))
                    .font(.system(size: 30, weight: .semibold))
                    .frame(maxWidth: .infinity, alignment: .center)
                
                Spacer()
            }
        }.background(Color("Orange"))
    }
}

struct EntryMainView_Previews: PreviewProvider {
    static var previews: some View {
        EntryMainView()
    }
}
