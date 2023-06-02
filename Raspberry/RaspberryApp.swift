//
//  RaspberryApp.swift
//  Raspberry
//
//  Created by ShuZik on 24.05.2023.
//

import SwiftUI

@main
struct RaspberryApp: App {
    var body: some Scene {
        WindowGroup {
            let homeInteractor = HomeInteractor()
            let homeViewModel = HomeViewModel(interactor: homeInteractor)

            HomeView(router: MainRouter(isPresented: .constant(false)), viewModel: homeViewModel)
        }
    }
}
