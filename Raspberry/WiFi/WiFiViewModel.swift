//
//  WiFiViewModel.swift
//  Raspberry
//
//  Created by ShuZik on 24.05.2023.
//

import SwiftUI

final class WiFiViewModel: ObservableObject {
    @Published var isCheckingWiFi = false
    @Published var isWiFiDone = false
    @Published var buttonTitle = "Check WiFi"

    private let interactor: WiFiInteractor
    private let presenter: WiFiPresenter

    init(interactor: WiFiInteractor, presenter: WiFiPresenter) {
        self.interactor = interactor
        self.presenter = presenter
    }
}
