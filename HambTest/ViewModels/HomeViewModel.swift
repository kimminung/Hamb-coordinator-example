//
//  HomeViewModel.swift
//  HambTest
//
//  Created by coulson on 5/25/25.
//

import Combine
import Foundation

@MainActor
class HomeViewModel: ObservableObject {
    @Published var items: [Item] = []

    init() {
        loadItems()
    }

    /// 비즈니스 로직: 아이템 로드 및 필터링
    private func loadItems() {
        let allItems = (1...10).map { Item(id: $0) }
        // 예: 짝수 아이템은 제외
        items = allItems.filter { $0.id % 2 != 0 }
    }
}
