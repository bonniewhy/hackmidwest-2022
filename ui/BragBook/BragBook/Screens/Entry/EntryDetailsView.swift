//
//  EntryDetailsView.swift
//  BragBook
//
//  Created by Liz Wait on 7/24/22.
//

import SwiftUI

struct EntryDetailsView: View {
    var body: some View {
        VStack {
            Image(systemName: "chevron.backward").foregroundColor(Color("Dark Orange"))
                .font(.system(size: 30, weight: .regular))
                .padding(.leading, 20)
                .frame(maxWidth: .infinity, alignment: .leading)
            
            Spacer()
            VStack {
                Text("Achievement Title")
                    .foregroundColor(Color("Dark Orange"))
                    .font(.system(size: 30, weight: .semibold))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading, 20)
                    .padding(.top, 30)
                Text("Tootsie roll icing halvah marshmallow marshmallow jujubes. Wafer soufflé cookie icing cake jelly beans sesame snaps cake. Dessert gingerbread marzipan powder sesame snaps donut cotton candy wafer pastry. Tart shortbread halvah pastry candy. Dessert oat cake marshmallow pudding fruitcake sesame snaps bear claw. Ice cream sesame snaps carrot cake candy canes ice cream danish sweet.")
                    .foregroundColor(Color("Dark Green"))
                    .font(.system(size: 18, weight: .light))
                    .padding()
                Spacer()
            }
            Spacer()
        }
    }
}

struct EntryDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        EntryDetailsView()
    }
}
