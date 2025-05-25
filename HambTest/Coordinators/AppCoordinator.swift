//
//  Untitled.swift
//  HambTest
//
//  Created by coulson on 5/25/25.
//

import SwiftUI

class AppCoordinator: ObservableObject {
    @Published var path: [Route] = []

    func start() {
        path = [.home]
    }

    func showDetail(for itemID: Int) {
        path.append(.detail(itemID: itemID))
    }

    func goBack() {
        guard !path.isEmpty else { return }
        path.removeLast()
    }
}
