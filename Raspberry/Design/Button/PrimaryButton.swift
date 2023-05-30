//
//  PrimaryButton.swift
//  Raspberry
//
//  Created by ShuZik on 30.05.2023.
//

import SwiftUI

struct PrimaryButton: View {
    let title: String
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .font(.headline)
                .foregroundColor(.white)
                .padding()
                .frame(maxWidth: .infinity)
                .background(.blue)
                .cornerRadius(10)
                .padding(.horizontal, 8)
        }
        .frame(height: 44)
        .padding(.vertical, 8)
    }
}

struct PrimaryButton_Previews: PreviewProvider {
    static var previews: some View {
        LazyVGrid(columns: [
            GridItem(.flexible(), spacing: 0),
            GridItem(.flexible(), spacing: 0)
        ], spacing: 0) {
            PrimaryButton(title: "Jailbreak", action: {})
            PrimaryButton(title: "Battery", action: {})
            PrimaryButton(title: "Hash", action: {})
            PrimaryButton(title: "Wi-Fi", action: {})
        }
        .previewLayout(.sizeThatFits)
        .padding(.horizontal, 8)
    }
}
