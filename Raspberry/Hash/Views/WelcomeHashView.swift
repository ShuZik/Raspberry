//
//  WelcomeHashView.swift
//  Raspberry
//
//  Created by ShuZik on 26.05.2023.
//

import SwiftUI

struct WelcomeHashView: View {
    var body: some View {
        VStack(alignment: .center) {
            Text("Check Hash")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding()

            Text("Hash is important for secure data.")
                .font(.title3)

            BlockHashView(iconName: "lock",
                          title: "Data Security",
                          description: "Hashing provides a way to protect data integrity and ensure its authenticity.")

            BlockHashView(iconName: "shield",
                          title: "Password Storage",
                          description: "Hashing is commonly used to securely store passwords by transforming them into irreversible hashes.")

            BlockHashView(iconName: "shield.checkerboard",
                          title: "Data Verification",
                          description: "Hashing allows for efficient data verification by comparing hashes rather than comparing entire data.")
        }
        .multilineTextAlignment(.center)
        .padding()
    }
}

struct WelcomeHashView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeHashView()
    }
}
