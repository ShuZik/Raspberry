//
//  DoneHashView.swift
//  Raspberry
//
//  Created by ShuZik on 29.05.2023.
//

import SwiftUI

struct DoneHashView: View {
    @Binding var isHashDone: Bool

    var body: some View {
        VStack {
            Image(systemName: "checkmark.circle")
                .font(.system(size: 64))
                .foregroundColor(.green)
                .padding()

            Text("The hash is secure and deemed satisfactory for our purposes.")
                .font(.headline)
                .multilineTextAlignment(.center)
                .padding()
        }
    }
}

struct DoneHashView_Previews: PreviewProvider {
    static var previews: some View {
        DoneHashView(isHashDone: .constant(true))
    }
}
