//
//  Development.swift
//  JUSTO_TEST_JR
//
//  Created by Jonathan Rivera on 18/04/22.
//

import Foundation
import APIJR

class Development: Endpoint {
    var environment: String = ""
    var scheme: String = "https"
    var baseURL: String = "randomuser.me"
    var headers: [String : String] = [ "Content-Type": "application/json"]
}
