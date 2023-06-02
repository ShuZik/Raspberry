//
//  HomeViewModel.swift
//  Raspberry
//
//  Created by ShuZik on 24.05.2023.
//

import SwiftUI

final class HomeViewModel: ObservableObject {
    private let interactor: HomeInteractor
    
    @Published var text: String = "Hello"
    
    init(interactor: HomeInteractor) {
        self.interactor = interactor
    }
}
