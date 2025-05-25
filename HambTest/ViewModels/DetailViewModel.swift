//
//  DetailViewModel.swift
//  HambTest
//
//  Created by coulson on 5/25/25.
//

import Combine
import Foundation

@MainActor
class DetailViewModel: ObservableObject {
    @Published var detailText: String = ""
    private let itemID: Int

    init(itemID: Int) {
        self.itemID = itemID
        loadDetail()
    }

    /// 비즈니스 로직: 상세 정보 생성
    private func loadDetail() {
        // 예시: 현재 시간 포함
        detailText = "Detail for item \(itemID) loaded at \(Date())"
    }
}
