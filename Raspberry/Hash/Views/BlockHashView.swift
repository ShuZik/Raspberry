//
//  BlockHashView.swift
//  Raspberry
//
//  Created by ShuZik on 29.05.2023.
//

import SwiftUI

struct BlockHashView: View {
    let iconName: String
    let title: String
    let description: String

    var body: some View {
        HStack {
            Image(systemName: iconName)
                .font(.title)
                .foregroundColor(.blue)
                .padding()

            VStack(alignment: .leading, spacing: 6) {
                Text(title)
                    .font(.headline)
                    .fontWeight(.bold)

                Text(description)
                    .font(.subheadline)
                    .foregroundColor(.gray)
                    .lineLimit(nil)
            }
            
            Spacer()
        }
        .padding(.vertical, 8)
        .background(.clear)
    }
}


struct BlockHashView_Previews: PreviewProvider {
    static var previews: some View {
        VStack(spacing: 12) {
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
        .padding(.horizontal, 4)
    }
}
