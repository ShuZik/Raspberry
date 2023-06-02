//
//  HashViewModel.swift
//  Raspberry
//
//  Created by ShuZik on 24.05.2023.
//

import SwiftUI

final class HashViewModel: ObservableObject {
    @Published var isCheckingHash = false
    @Published var isHashDone = false
    @Published var isHashSave = false
    @Published var buttonTitle = "Check Hash"

    private let interactor: HashInteractor

    init(interactor: HashInteractor) {
        self.interactor = interactor
    }

    func checkHash() {
        isCheckingHash = true
        isHashDone = false
        buttonTitle = "Checking..."
        interactor.checkHash(viewModel: self)
    }
}
