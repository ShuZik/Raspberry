//
//  BatteryViewModel.swift
//  Raspberry
//
//  Created by ShuZik on 24.05.2023.
//

import SwiftUI

final class BatteryViewModel: ObservableObject {
    @Published var isCheckingBattery = false
    @Published var isBatteryDone = false
    @Published var buttonTitle = "Check Battery"

    private let interactor: BatteryInteractor

    init(interactor: BatteryInteractor) {
        self.interactor = interactor
    }
}
