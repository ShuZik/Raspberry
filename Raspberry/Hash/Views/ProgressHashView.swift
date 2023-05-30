//
//  ProgressHashView.swift
//  Raspberry
//
//  Created by ShuZik on 26.05.2023.
//

import SwiftUI

struct ProgressHashView: View {
    @Binding var isHashDone: Bool
    @State private var progress: CGFloat = 0.0
    private let updateInterval: TimeInterval = 1.0

    var body: some View {
        VStack {
            ProgressView(value: progress)
                .progressViewStyle(LinearProgressViewStyle())
                .padding()
        }
        .onAppear {
            startProgress()
        }
        .onChange(of: progress) { newValue in
            if newValue >= 1.0 {
                isHashDone = true
            }
        }
    }

    func startProgress() {
        let timer = Timer.scheduledTimer(withTimeInterval: updateInterval, repeats: true) { timer in
            if progress < 1 {
                let randomValue = CGFloat.random(in: 0.05...0.17)
                progress += randomValue
            } else {
                timer.invalidate()
            }
        }
    }
}

struct ProgressHashView_Previews: PreviewProvider {
    static var previews: some View {
        ProgressHashView(isHashDone: .constant(false))
    }
}
