//
//  WiFiView.swift
//  Raspberry
//
//  Created by ShuZik on 24.05.2023.
//

import SwiftUI

struct WiFiView: View {
    @StateObject private var viewModel: WiFiViewModel
    
    init(viewModel: WiFiViewModel) {
        _viewModel = StateObject(wrappedValue: viewModel)
    }
    
    var body: some View {
        VStack {
            Spacer()
            Text("WiFi")
                .font(.largeTitle)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
                .padding()
            Spacer()
        }
    }
}


struct WiFiView_Previews: PreviewProvider {
    static var previews: some View {
        let interactor = WiFiInteractor()
        let presenter = WiFiPresenter()
        let viewModel = WiFiViewModel(interactor: interactor, presenter: presenter)
        WiFiView(viewModel: viewModel)
    }
}
