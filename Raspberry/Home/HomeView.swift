//
//  ContentView.swift
//  Raspberry
//
//  Created by ShuZik on 24.05.2023.
//

import SwiftUI

struct HomeView<R: MainRouterProtocol>: View {
    
    @StateObject private var router: R
    
    @ObservedObject private var viewModel: HomeViewModel
    
    init(router: R, viewModel: HomeViewModel) {
        _router = StateObject(wrappedValue: router)
        self.viewModel = viewModel
    }
    
    let columns: [GridItem] = [
        GridItem(.flexible(), spacing: 0),
        GridItem(.flexible(), spacing: 0)
    ]
    
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                
                Text("Welcome to Raspberry")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding()
                
                Text("Get started with quick action")
                    .font(.title2)
                    .padding()
                
                Image("hash_icon")
                    .resizable()
                    .frame(width: 120, height: 120)
                    .padding()
                
                Spacer()
                
                LazyVGrid(columns: columns, spacing: 6) {
                    PrimaryButton(title: "Jailbreak", action: router.pushJailbreak)
                    PrimaryButton(title: "Battery", action: router.pushBattery)
                    PrimaryButton(title: "Hash", action: router.pushHash)
                    PrimaryButton(title: "Wi-Fi", action: router.pushWiFi)
                }
                .navigation(router)
            }
            .multilineTextAlignment(.center)
            .padding()
        }
        .sheet(router)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        let homeInteractor = HomeInteractor()
        let homeViewModel = HomeViewModel(interactor: homeInteractor)
        
        HomeView(router: MainRouter(isPresented: .constant(false)), viewModel: homeViewModel)
    }
}
