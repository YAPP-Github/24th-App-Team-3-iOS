//
//  SampleAPI.swift
//  ShowPot
//
//  Created by Daegeon Choi on 5/28/24.
//

import Foundation

struct SampleAPI {
    func fetchSampleData(request: SampleRequest) -> SampleResponse {
        return SampleResponse(greeting: "Hello \(request.id)")
    }
}
