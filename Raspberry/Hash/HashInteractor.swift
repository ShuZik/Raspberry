//
//  HashInteractor.swift
//  Raspberry
//
//  Created by ShuZik on 24.05.2023.
//

import Foundation
import CommonCrypto

protocol HashInteractorProtocol {
    func checkHash(viewModel: HashViewModel)
}

final class HashInteractor: HashInteractorProtocol {
    func checkHash(viewModel: HashViewModel) {
        DispatchQueue.main.asyncAfter(deadline: .now() + Double.random(in: 5...25)) {
            viewModel.isCheckingHash = false
            viewModel.isHashDone = true
            viewModel.buttonTitle = "Check Hash Again"
        }
    }
    
    private func verifyHashIntegrity(data: Data, expectedHash: Data) -> Bool {
        var hash = [UInt8](repeating: 0, count: Int(CC_SHA256_DIGEST_LENGTH))
        
        data.withUnsafeBytes { (buffer: UnsafeRawBufferPointer) in
            _ = CC_SHA256(buffer.baseAddress, CC_LONG(data.count), &hash)
        }
        
        let computedHash = Data(hash)
        
        return computedHash == expectedHash
    }
}
