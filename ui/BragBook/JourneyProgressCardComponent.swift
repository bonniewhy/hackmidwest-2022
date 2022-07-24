//
//  JourneyProgressCardComponent.swift
//  BragBook
//
//  Created by Shanice Gipson on 7/24/22.
//

import SwiftUI

struct JourneyProgressCardComponent: View {
    @State private var completedAmount = 67.0
    
    var body: some View {
        VStack {
            HStack {
                Image("codergirl")
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                    .frame(alignment: .leading)
                
                VStack {
                    
                    Text("OVERCOMING IMPOSTER SYNDROME")
                        .font(.system(size: 12, weight: .regular))
                        .padding(.top, 15)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    
                    VStack {
                        
                        HStack {
                            Image(systemName: "tag.circle.fill")
                                .foregroundColor(Color("Dark Green"))
                                .font(.system(size: 20, weight: .regular))
                            
                            Text("Personal Development")
                                .font(.system(size: 10, weight: .semibold))
                                .padding([.bottom, .top], 5)
                            
                        }
                        
                        .frame(maxWidth: .infinity, alignment: .leading)
                        
                        HStack {
                            Image(systemName: "timer")
                                .foregroundColor(Color("Dark Green"))
                                .font(.system(size: 20, weight: .regular))
                            
                            Text("10 Hours")
                            
                                .font(.system(size: 10, weight: .semibold))
                                .padding([.bottom, .top], 6)
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                    }
                    
                    ProgressView(value: completedAmount, total: 100)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .tint(Color("green"))
                        .scaleEffect(x: 1.2, y:4 , anchor: .center)
                        .padding()
                }
                
            }
            .padding(4)
            .padding(.trailing, 15)
        }
        .background(Color.white)
        .cornerRadius(6)
        .padding(8)
        .padding(.bottom, 3)
        .shadow(color: Color("Dark Green"), radius: 7, x: 2, y: 4)
        
    }
    
}

struct JourneyProgressCardComponent_Previews: PreviewProvider {
    static var previews: some View {
        JourneyProgressCardComponent()
    }
}
