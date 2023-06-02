//
//  WiFiView.swift
//  Raspberry
//
//  Created by ShuZik on 24.05.2023.
//

import SwiftUI

struct WiFiView: View {
    @ObservedObject private var viewModel: WiFiViewModel
    
    init(viewModel: WiFiViewModel) {
        self.viewModel = viewModel
    }
    
    var body: some View {
        VStack {
            Text(viewModel.wifiName)
                .padding()
            
            Text(viewModel.wifiSafety)
                .padding()
            
            Button("Check WiFi Safety") {
                viewModel.checkWiFiSafety()
            }
            .padding()
        }
    }
}

struct WiFiView_Previews: PreviewProvider {
    static var previews: some View {
        let interactor = WiFiInteractor()
        let viewModel = WiFiViewModel(interactor: interactor)
        let wifiView = WiFiView(viewModel: viewModel)
        
        return wifiView
    }
}
