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
    private let presenter: BatteryPresenter

    init(interactor: BatteryInteractor, presenter: BatteryPresenter) {
        self.interactor = interactor
        self.presenter = presenter
    }
}
