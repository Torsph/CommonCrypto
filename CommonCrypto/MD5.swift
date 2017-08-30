//
//  Base64.swift
//  Example
//
//  Created by Torp, Thomas on 30/08/2017.
//  Copyright © 2017 Schibsted SPT. All rights reserved.
//

import Foundation
import CCommonCrypto

public extension String {
  func md5() -> String! {
    let str = self.cString(using: String.Encoding.utf8)
    let strLen = CUnsignedInt(self.lengthOfBytes(using: String.Encoding.utf8))
    let digestLen = Int(CC_MD5_DIGEST_LENGTH)
    let result = UnsafeMutablePointer<CUnsignedChar>.allocate(capacity: digestLen)

    CC_MD5(str!, strLen, result)

    let hash = NSMutableString()
    for i in 0..<digestLen {
      hash.appendFormat("%02x", result[i])
    }

    result.deinitialize()
    result.deallocate(capacity: digestLen)

    return String(format: hash as String)
  }
}
