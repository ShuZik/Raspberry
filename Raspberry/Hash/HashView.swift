//
//  HashView.swift
//  Raspberry
//
//  Created by ShuZik on 24.05.2023.
//

import SwiftUI

struct HashView: View {
    @StateObject private var viewModel: HashViewModel

    init(viewModel: HashViewModel) {
        _viewModel = StateObject(wrappedValue: viewModel)
    }

    var body: some View {
        VStack {
            Spacer()

            if viewModel.isCheckingHash {
                ProgressHashView(isHashDone: $viewModel.isHashDone)
                    .disabled(true)
            } else if viewModel.isHashDone {
                DoneHashView(isHashDone: $viewModel.isHashDone)
            } else {
                WelcomeHashView()
            }

            Spacer()

            PrimaryButton(title: viewModel.buttonTitle, action: viewModel.checkHash)
                .disabled(viewModel.isCheckingHash)
        }
        .padding()
        .onReceive(viewModel.$isCheckingHash) { isCheckingHash in
            if isCheckingHash {
                viewModel.isHashDone = false
            }
        }
    }
}


struct HashView_Previews: PreviewProvider {
    static var previews: some View {
        let interactor = HashInteractor()
        let presenter = HashPresenter()
        let viewModel = HashViewModel(interactor: interactor, presenter: presenter)
        HashView(viewModel: viewModel)
    }
}
