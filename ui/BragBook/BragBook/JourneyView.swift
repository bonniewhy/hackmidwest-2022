//
//  JourneyView.swift
//  BragBook
//
//  Created by Shanice Gipson on 7/23/22.
//

import SwiftUI

struct JourneyView: View {
    var body: some View {
        VStack {
            Image(systemName: "chevron.backward").foregroundColor(Color("Dark Green"))
                .font(.system(size: 30, weight: .regular))
                .padding(.leading, 20)
                .frame(maxWidth: .infinity, alignment: .leading)
            Spacer()
            Text("Hi, Savannah")
                .foregroundColor(Color("Dark Green"))
                .font(.system(size: 20, weight: .semibold))
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 20)
                .padding(.top, 30)
            Text("Jump Back In")
                .foregroundColor(Color("Green"))
                .font(.system(size: 16, weight: .semibold))
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 20)
                .padding(.top, -5)
                .padding(.bottom, 15)
            RoundedRectangle(cornerRadius: 25, style: .continuous)
                           .fill(.gray)
                           .frame(width: 400, height: 150)
            RoundedRectangle(cornerRadius: 25, style: .continuous)
                           .fill(.gray)
                           .frame(width: 400, height: 150)
            HStack {
            Text("Popular Courses")
                .foregroundColor(Color("Dark Green"))
                .font(.system(size: 20, weight: .semibold))
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.top, 30)
                .padding(.leading, 20)
                .padding(.bottom, 15)
                
                HStack {
                Text("Show All")
                    .foregroundColor(Color("Green"))
                    .font(.system(size: 15, weight: .semibold))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.top, 30)
                    .padding(.leading, 107)
                    .padding(.bottom, 15)
                    Image(systemName: "chevron.forward").foregroundColor(Color("Green"))
                        .font(.system(size: 15, weight: .semibold))
                        .padding(.top, 30)
                        .padding(.trailing, 20)
                        .padding(.bottom, 15)
                }
            }
            ScrollView(.horizontal) {
                HStack(spacing: 20) {
                    ForEach(0..<10) {
                        Text("Item \($0)")
                            .foregroundColor(.white)
                            .font(.largeTitle)
                            .frame(width: 200, height: 200)
                            .background(Color("Dark Green"))
                    }
                }
                Spacer()
            }
        }
    }
}

struct JourneyView_Previews: PreviewProvider {
    static var previews: some View {
        JourneyView()
    }
}
