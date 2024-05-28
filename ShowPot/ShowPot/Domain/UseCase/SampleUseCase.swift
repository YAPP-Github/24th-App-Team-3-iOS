//
//  SampleUseCase.swift
//  ShowPot
//
//  Created by Daegeon Choi on 5/28/24.
//

import Foundation

struct SampleUseCase {
    
    func execute(id: String) -> SampleResponse {
        // 의존성 분리 필요
        let api = SampleAPI()
        let requestModel = SampleRequest(id: id)
        return api.fetchSampleData(request: requestModel)
    }
}
