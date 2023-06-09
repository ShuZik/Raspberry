//
//  JailbreakViewModel.swift
//  Raspberry
//
//  Created by ShuZik on 24.05.2023.
//

import SwiftUI

final class JailbreakViewModel: ObservableObject {
    @Published var isCheckingJailbreak = false
    @Published var isJailbreakDone = false
    @Published var buttonTitle = "Check Jailbreak"

    private let interactor: JailbreakInteractor

    init(interactor: JailbreakInteractor) {
        self.interactor = interactor
    }
}
