//
//  WiFiViewModel.swift
//  Raspberry
//
//  Created by ShuZik on 24.05.2023.
//

import Combine
import NetworkExtension

final class WiFiViewModel: ObservableObject {
    @Published var wifiName: String = ""
    @Published var wifiSafety: String = ""
    
    private let interactor: WiFiInteractorProtocol
    private var cancellables = Set<AnyCancellable>()
    
    init(interactor: WiFiInteractorProtocol) {
        self.interactor = interactor
        requestWiFiPermission()
        //        checkWiFiName()
    }
    
    func requestWiFiPermission() {
        NEHotspotConfigurationManager.shared.getConfiguredSSIDs { ssids in
            if ssids.isEmpty {
                NEHotspotConfigurationManager.shared.getConfiguredSSIDs { ssids in
//                    guard let self = self else { return }
                    
                    if ssids.isEmpty {
//                        NEHotspotConfigurationManager.shared.showPrelogIn()
                    } else {
                        self.checkWiFiSafety()
                    }
                }
            } else {
                self.checkWiFiSafety()
            }
        }
    }
    
    func checkWiFiName() {
//        guard let currentNetwork = NEHotspotNetwork.current else {
//            return
//        }
//
//        wifiName = currentNetwork.ssid
    }
    
    func checkWiFiSafety() {
//        guard let interfaces = CNCopySupportedInterfaces() as? [String],
//              let currentInterface = interfaces.first,
//              let info = CNCopyCurrentNetworkInfo(currentInterface as CFString) as? [String: Any],
//              let securityTypeString = info[kCNNetworkInfoKeyInterfaceAuthType] as? String,
//              let securityType = NEHotspotNetworkSecurityType(rawValue: securityTypeString) else {
//            wifiSafety = "Unsecure"
//            return
//        }
//        
//        switch securityType {
//        case .wpa3Personal:
//            wifiSafety = "FINE"
//        case .wpa2Wpa3Personal, .wpa2Personal:
//            wifiSafety = "It's not bad"
//        case .wpa2Personal:
//            wifiSafety = "It's ok"
//        default:
//            wifiSafety = "Unsecure"
//        }
    }
}
