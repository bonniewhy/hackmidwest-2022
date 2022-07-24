//
//  CourseCardComponent.swift
//  BragBook
//
//  Created by Shanice Gipson on 7/24/22.
//

import SwiftUI

struct CourseCardComponent: View {
   @State private var rating = 4
    private var title = "Collaborating"
    private var tag = "Collaborating"
    private var hours = "10"
    
    
    var body: some View {
        VStack {
            Image("Course_1")
                .resizable()
                .scaledToFit()
                .frame(alignment: .leading)
            
            VStack {
                
                Text(title).foregroundColor(Color("Dark Green"))
                    .font(.system(size: 20, weight: .bold))
                
                FiveStarRating(rating: $rating).padding(.top, 5)
                
                HStack {
                    Text(tag).foregroundColor(Color("Dark Green"))
                        .font(.system(size: 16, weight: .semibold))
                        .padding([.bottom, .top], 6)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    
                    Text("\(hours)Hours").foregroundColor(Color("Dark Green"))
                        .font(.system(size: 16, weight: .semibold))
                        .padding([.bottom, .top], 6)
                    
                }
            }.padding()
            .frame(maxWidth: .infinity, alignment: .leading)
            
        }
        .background(Color.white)
        .cornerRadius(6)
        .padding(8)
        .padding(.bottom, 3)
        .shadow(color: Color("Dark Green"), radius: 7, x: 2, y: 4)
        
    }
    
    struct CourseCardComponent_Previews: PreviewProvider {
        static var previews: some View {
            CourseCardComponent()
        }
    }
}
