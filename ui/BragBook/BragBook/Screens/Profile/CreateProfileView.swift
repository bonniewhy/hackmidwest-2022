//
//  CreateProfileView.swift
//  BragBook
//
//  Created by Angela Mitchell on 7/23/22.
//

import SwiftUI

struct CreateProfileView: View {
    
    @State private var firstName: String = ""
    @State private var lastName: String = ""
    @State private var city: String = ""
    @State private var state: String = ""
    
    @State private var phoneNumber: String = ""
    @State private var email: String = ""
    @State private var password: String = ""
        
    @State private var isSubmitted: Bool = false
    
    var body: some View {
        VStack {
            NavigationView {
                Form {
                    Image("codergirl")
                        .resizable()
                        .scaledToFit()
                        .clipShape(Circle())
                    Group {
                        TextField("First Name", text: $firstName)
                        TextField("Last Name", text: $lastName)
                        TextField("City", text: $city)
                        TextField("State", text: $state)
                    }
                    Group {
                        TextField("Email", text: $email)
                        SecureField("Password", text: $password)
                    }
                }
                .navigationBarTitle("Create Profile")
                
            }
            Button("Submit") {
                isSubmitted = true
            }
                .padding()
            Spacer()
        }
        .alert("Profile succesfully created!", isPresented: $isSubmitted) {
               Button("OK", role: .cancel) { }
           }
    }
}

struct CreateProfileView_Previews: PreviewProvider {
    static var previews: some View {
        CreateProfileView()
    }
}
