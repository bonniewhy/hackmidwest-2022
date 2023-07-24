//
//  HomeScreen.swift
//  BragBook
//
//  Created by Liz Wait on 7/23/22.
//

import SwiftUI

struct HomeScreenView: View {
    @StateObject var viewModel: ViewModel = ViewModel()
    let currentUser = FakePerson.samplePerson

    var body: some View {
        VStack {
            Image("codergirl")
                .resizable()
                .scaledToFit()
                .clipShape(Circle())
            Text("\(currentUser.firstName!) \(currentUser.lastName!)")
                .font(.headline)
            List {
                ForEach(currentUser.entries!) { entry in
                    EntryCardView(bragEntry: entry)
                }
            }

            VStack(spacing: 10) {
                Text("Temporary Nav")
                VStack {
                    NavigationLink("Create Entry View", destination: CreateEntryView())
                    NavigationLink("Create Profile View", destination: CreateProfileView())
                    NavigationLink("Entry Details View", destination: EntryDetailsView())
                    NavigationLink("Entry Main View", destination: EntryMainView(entries: FakeEntry.sampleEntryArray))
                    NavigationLink("Journey View", destination: JourneyView())
                    NavigationLink("Profile View", destination: ProfileView())
                }
            }
        }
        .padding()
        .loadingSplashScreen(isShown: $viewModel.isLoading)
        .onAppear { viewModel.load() }
    }
}

struct HomeScreenView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            HomeScreenView()
        }
    }
}

extension HomeScreenView {
    class ViewModel: ObservableObject {
        @Published var currentUser: Person?
        @Published var allPeople: [Person] = []
        @Published var entries: [Entry] = []
        @Published var isLoading = false

        let getPersonByIdUseCase: GetPersonByIdUseCase
        let getAllPeopleUseCase: GetAllPeopleUseCase
        var loadingDispatchGroup = DispatchGroup()
        var loadingCompletion: () -> Void = { }

        init(getPersonByIdUseCase: GetPersonByIdUseCase = GetPersonByIdInteractor(), getAllPeopleUseCase: GetAllPeopleUseCase = GetAllPeopleInteractor()) {
            self.getPersonByIdUseCase = getPersonByIdUseCase
            self.getAllPeopleUseCase = getAllPeopleUseCase
        }

        func load() {
            startLoading()
            fetchCurrentUser()

            loadingDispatchGroup.notify(queue: .main) { [weak self] in
                self?.completeLoading()
            }
        }

        func startLoading() {
            isLoading = true
        }

        func fetchCurrentUser() {
            loadingDispatchGroup.enter()

            // TODO: Figure out how to use the logged in user when we add authentication.
            getPersonByIdUseCase.execute(with: "62dcc2a36ee3c01d77113f70") { [weak self] result in
                guard let self = self else { return }
                defer { self.loadingDispatchGroup.leave() }

                switch result {
                case .success(let person): self.currentUser = person
                case .failure(let error): print(error)
                }
            }
        }

        func completeLoading() {
            loadingCompletion()
            withAnimation {
                isLoading = false
            }
        }
    }
}
