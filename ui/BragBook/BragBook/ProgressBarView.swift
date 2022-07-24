//
//  ProgressBarView.swift
//  BragBook
//
//  Created by Shanice Gipson on 7/24/22.
//

import SwiftUI

struct ProgressBarView: View {
    @Binding var value: Float
    
    var body: some View {
        GeometryReader { geometry in
                    Rectangle().frame(width: geometry.size.width , height: geometry.size.height)
                }
    }
}

struct ProgressBarView_Previews: PreviewProvider {
    static var previews: some View {
        ProgressBarView()
    }
}
