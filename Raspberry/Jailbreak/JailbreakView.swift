//
//  JailbreakView.swift
//  Raspberry
//
//  Created by ShuZik on 24.05.2023.
//

import SwiftUI

struct JailbreakView: View {
    @StateObject private var viewModel: JailbreakViewModel
    
    init(viewModel: JailbreakViewModel) {
        _viewModel = StateObject(wrappedValue: viewModel)
    }
    
    var body: some View {
        VStack {
            Spacer()
            Text("Jailbreak")
                .font(.largeTitle)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
                .padding()
            PrimaryButton(title: "Click", action: {
                
            })
            Spacer()
        }
    }
}



struct JailbreakView_Previews: PreviewProvider {
    static var previews: some View {
        let interactor = JailbreakInteractor()
        let viewModel = JailbreakViewModel(interactor: interactor)
        JailbreakView(viewModel: viewModel)
    }
}
