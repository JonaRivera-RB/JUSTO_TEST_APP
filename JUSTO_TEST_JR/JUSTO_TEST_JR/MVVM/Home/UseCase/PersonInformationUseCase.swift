//
//  PersonInformationUseCase.swift
//  JUSTO_TEST_JR
//
//  Created by Jonathan Rivera on 18/04/22.
//

import Foundation
import APIJR

protocol PersonInformation {
    func request(_ completion:@escaping(Result<JustoPersonModel?, Error>) -> () )
}

struct PersonInformationUseCase: PersonInformation {
    func request(_ completion:@escaping(Result<JustoPersonModel?, Error>) -> () ) {
        let network = NetworkEngine(path: "/api/", parameters: nil, method: .get, endpoint: Development())
        network.request(completion: completion)
    }
}
