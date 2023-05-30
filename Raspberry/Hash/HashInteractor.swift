//
//  HashInteractor.swift
//  Raspberry
//
//  Created by ShuZik on 24.05.2023.
//

import Foundation

protocol HashInteractorProtocol {
    func checkHash(viewModel: HashViewModel)
}

final class HashInteractor: HashInteractorProtocol {
    func checkHash(viewModel: HashViewModel) {
        DispatchQueue.main.asyncAfter(deadline: .now() + Double.random(in: 5...25)) {
            viewModel.isCheckingHash = false
            viewModel.isHashDone = true
            viewModel.buttonTitle = "Check Hash Again"
        }
    }
}
