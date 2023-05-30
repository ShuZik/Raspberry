//
//  MainRouter.swift
//  Raspberry
//
//  Created by ShuZik on 24.05.2023.
//

import SwiftUI

protocol MainRouterProtocol: Router {
    func pushJailbreak()
    func pushBattery()
    func pushHash()
    func pushWiFi()
}

final class MainRouter: Router, MainRouterProtocol {
    
    func pushJailbreak() {
        let interactor = JailbreakInteractor()
        let presenter = JailbreakPresenter()
        let viewModel = JailbreakViewModel(interactor: interactor, presenter: presenter)
        
        //let router = Router(isPresented: isNavigating)
        navigateTo(JailbreakView(viewModel: viewModel))
    }
    
    func pushBattery() {
        let interactor = BatteryInteractor()
        let presenter = BatteryPresenter()
        let viewModel = BatteryViewModel(interactor: interactor, presenter: presenter)
        
        //let router = Router(isPresented: isNavigating)
        navigateTo(BatteryView(viewModel: viewModel))
    }
    
    func pushHash() {
        let interactor = HashInteractor()
        let presenter = HashPresenter()
        let viewModel = HashViewModel(interactor: interactor, presenter: presenter)
        
        //let router = Router(isPresented: isNavigating)
        navigateTo(HashView(viewModel: viewModel))
    }
    
    func pushWiFi() {
        let interactor = WiFiInteractor()
        let presenter = WiFiPresenter()
        let viewModel = WiFiViewModel(interactor: interactor, presenter: presenter)
        
        //let router = Router(isPresented: isNavigating)
        navigateTo(WiFiView(viewModel: viewModel))
    }
}
