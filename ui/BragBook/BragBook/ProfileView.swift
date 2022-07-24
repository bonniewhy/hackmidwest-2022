import SwiftUI

struct ProfileView: View {
    @State private var showingSettingsAlert = false
    @State private var showingFAQAlert = false
    @State private var showingChatAlert = false
    @State private var showingLogOutAlert = false
    
    var body: some View {
        
        VStack {
            topNavSection
            profileMainInfo
            profileStatus
            profileAdditionalInfo
        }
        .background(Color("Rose"))
    }
    
    @ViewBuilder
    var topNavSection: some View {
        HStack {
            Image(systemName: "chevron.backward").foregroundColor(Color("Dark Green"))
                .font(.system(size: 30, weight: .regular))
                .padding(.leading, 20)
            Spacer()
            Image(systemName: "pencil").foregroundColor(Color("Dark Green"))
                .font(.system(size: 30, weight: .regular))
                .padding(.trailing, 20)
        }
        .padding(.bottom, 20)
    }
    
    @ViewBuilder
    var profileMainInfo: some View {
        HStack {
            Spacer()
            Image("codergirl")
                .resizable()
                .scaledToFit()
                .clipShape(Circle())
            VStack {
                Text("Savannah Brooks")
                    .foregroundColor(Color("Dark Green"))
                    .font(.system(size: 20, weight: .semibold))
                Text("Kansas City, MO")
                    .font(.system(size: 15, weight: .regular))
            }
            .padding(.trailing, 40)
        }
        .padding(.bottom, 20)
        
        HStack {
            Image(systemName: "phone.circle.fill").foregroundColor(Color("Dark Green"))
                .font(.system(size: 20, weight: .regular))
                .padding(.leading, 20)
            Text("(816) 876-7826")
                .font(.system(size: 15, weight: .regular))
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        
        HStack {
            Image(systemName: "mail.fill").foregroundColor(Color("Dark Green"))
                .font(.system(size: 20, weight: .regular))
                .padding(.leading, 20)
            Text("Savannah.Brooks@BragBook.com")
                .font(.system(size: 15, weight: .regular))
        }
        .padding(.top, 2)
        .frame(maxWidth: .infinity, alignment: .leading)
        
        Divider()
    }
    
    @ViewBuilder
    var profileStatus: some View {
        HStack {
            Spacer()
            VStack {
                Text("3")
                    .font(.system(size: 30, weight: .semibold))
                Text("Journeys Completed")
                    .font(.system(size: 15, weight: .regular))
            }
            
            Spacer()
            
            VStack {
                Text("15")
                    .font(.system(size: 30, weight: .semibold))
                Text("Entries Added")
                    .font(.system(size: 15, weight: .regular))
            }
            
            Spacer()
        }
        .padding(.top, 20)
        
        Divider()
    }
    
    @ViewBuilder
    var profileAdditionalInfo: some View {
        VStack {
            Button {
                showingSettingsAlert = true
            } label: {
                HStack {
                    Image(systemName: "gearshape.fill").foregroundColor(Color("Dark Green"))
                        .font(.system(size: 20, weight: .regular))
                        .padding(.leading, 20)
                    Text("Settings")
                        .font(.system(size: 15, weight: .regular))
                        .foregroundColor(Color("Dark Green"))
                }
            }
            .alert(isPresented:$showingSettingsAlert) {
                            Alert(
                                title: Text("Settings is down right now, sorry!"),
                                message: Text("I mean this app is already perfect. No changes needed, right!?"),
                                dismissButton: .default(Text("Yes! You are totally right!"))
                            )
                        }
            .padding(.top, 50)
            .frame(maxWidth: .infinity, alignment: .leading)
            
            Button {
                showingFAQAlert = true
            } label: {
                HStack {
                    Image(systemName: "questionmark.folder.fill").foregroundColor(Color("Dark Green"))
                        .font(.system(size: 20, weight: .regular))
                        .padding(.leading, 20)
                    Text("FAQs")
                        .font(.system(size: 15, weight: .regular))
                        .foregroundColor(Color("Dark Green"))
                }
            }
            .alert(isPresented:$showingFAQAlert) {
                            Alert(
                                title: Text("FAQ is down right now, sorry!"),
                                message: Text("Ask one of our friendly devs a question instead!"),
                                dismissButton: .default(Text("Okay, sounds good!"))
                            )
                        }
            .padding(.top, 30)
            .frame(maxWidth: .infinity, alignment: .leading)
            
            Button {
                showingChatAlert = true
            } label: {
                HStack {
                    Image(systemName: "message.fill").foregroundColor(Color("Dark Green"))
                        .font(.system(size: 20, weight: .regular))
                        .padding(.leading, 20)
                    Text("Chat")
                        .font(.system(size: 15, weight: .regular))
                        .foregroundColor(Color("Dark Green"))
                }
            }
            .alert(isPresented:$showingChatAlert) {
                            Alert(
                                title: Text("Chat is down right now, sorry!"),
                                message: Text("We can chat some other time!"),
                                dismissButton: .default(Text("Okay, sounds good!"))
                            )
                        }
                        .padding(.top, 30)
                        .frame(maxWidth: .infinity, alignment: .leading)
        }
        .padding(.bottom, 50)
        
        Divider()
        
        Spacer()
        
        Button {
            showingLogOutAlert = true
        } label: {
            HStack {
                Image(systemName: "power.circle.fill").foregroundColor(Color.red)
                    .font(.system(size: 30, weight: .regular))
                    .padding(.leading, 20)
                Text("Log Out").foregroundColor(Color("Dark Green"))
                    .font(.system(size:20, weight: .bold))
            }
        }
            .alert(isPresented:$showingLogOutAlert) {
                        Alert(
                            title: Text("Are you sure you want to log out?"),
                            message: Text("We don't want you to leave!"),
                            dismissButton: .default(Text("Okay, I'll stay logged in!"))
                        )
                    }
            .padding(.top, 30)
            .padding(.bottom, 100)
            .frame(maxWidth: .infinity, alignment: .leading)
        }
    }

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
