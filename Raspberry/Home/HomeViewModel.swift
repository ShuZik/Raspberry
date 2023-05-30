//
//  HomeViewModel.swift
//  Raspberry
//
//  Created by ShuZik on 24.05.2023.
//

import SwiftUI

class HomeViewModel: ObservableObject {
    private let interactor: HomeInteractor
    private let presenter: HomePresenter
    
    @Published var text: String = "Hello"
    
    init(interactor: HomeInteractor, presenter: HomePresenter) {
        self.interactor = interactor
        self.presenter = presenter
    }
    
    func updateText(_ newText: String) {
        text = newText
    }
}
