//
//  WiFiInteractor.swift
//  Raspberry
//
//  Created by ShuZik on 24.05.2023.
//

import NetworkExtension
import SystemConfiguration.CaptiveNetwork

enum WiFiSecurityLevel {
    case secure
    case notBad
    case ok
    case unsecure
}

protocol WiFiInteractorProtocol {
    func checkWiFiSafety(completion: @escaping (WiFiSecurityLevel) -> Void)
}

final class WiFiInteractor: WiFiInteractorProtocol {
    
    func checkWiFiSafety(completion: @escaping (WiFiSecurityLevel) -> Void) {
        
//        let configuration = NEHotspotConfiguration(ssid: "")
//            configuration.joinOnce = false
//            
//            NEHotspotConfigurationManager.shared.apply(configuration) { error in
//                if let error = error {
//                    print("Error configuring WiFi: \(error.localizedDescription)")
//                    return
//                }
//                
//                guard let currentNetwork = NEHotspotNetwork.current else {
//                    print("No WiFi connection found.")
//                    return
//                }
//                
//                let ssid = currentNetwork.ssid
//                let isSecure = currentNetwork.isSecure
//                print("Current WiFi name: \(ssid)")
//                print("WiFi is secure: \(isSecure)")
//            }
        
//        var ssid: String?
//                if let interfaces = CNCopySupportedInterfaces() as NSArray? {
//                    for interface in interfaces {
//                        if let interfaceInfo = CNCopyCurrentNetworkInfo(interface as! CFString) as NSDictionary? {
//                            ssid = interfaceInfo[kCNNetworkInfoKeySSID as String] as? String
//                            break
//                        }
//                    }
//                }
//
//        print(ssid)
//
//        guard let interfaces = CNCopySupportedInterfaces() as? [String] else {
//            completion(.unsecure)
//            return
//        }
//
//        guard let currentInterface = interfaces.first else {
//            completion(.unsecure)
//            return
//        }
//
//        guard let info = CNCopyCurrentNetworkInfo(currentInterface as CFString) as? [String: Any] else {
//            completion(.unsecure)
//            return
//        }
//
//        if let securityTypeString = info["AuthType"] as? String,
//           let securityTypeInt = Int(securityTypeString),
//           let securityType = NEHotspotNetworkSecurityType(rawValue: securityTypeInt) {
//            switch securityType {
//            case .personal, .enterprise:
//                completion(.secure)
//            case .WEP:
//                completion(.notBad)
//            @unknown default:
//                completion(.unsecure)
//            }
//        } else {
            completion(.unsecure)
//        }
    }
    
}
