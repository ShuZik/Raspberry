//
//  WiFiModel.swift
//  Raspberry
//
//  Created by ShuZik on 30.05.2023.
//

import Foundation

struct WiFiModel {
    var isSecure: WiFiSecurityLevel
}

extension WiFiModel {
    var secureText: String {
        switch isSecure {
        case .secure:
            return "Best Secure"
        case .notBad, .ok:
            return "This is not fuly save to use"
        default:
            return "Absolutly unsucere"
        }
    }
}

