//
//  BatteryView.swift
//  Raspberry
//
//  Created by ShuZik on 24.05.2023.
//

import SwiftUI

struct BatteryView: View {
    @StateObject private var viewModel: BatteryViewModel
    
    init(viewModel: BatteryViewModel) {
        _viewModel = StateObject(wrappedValue: viewModel)
    }
    
    var body: some View {
        VStack {
            Spacer()
            Text("Battery")
                .font(.largeTitle)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
                .padding()
            Spacer()
        }
    }
}


struct BatteryView_Previews: PreviewProvider {
    static var previews: some View {
        let interactor = BatteryInteractor()
        let viewModel = BatteryViewModel(interactor: interactor)
        BatteryView(viewModel: viewModel)
    }
}
