//
//  DetailView.swift
//  HambTest
//
//  Created by coulson on 5/25/25.
//

import SwiftUI

struct DetailView: View {
    @EnvironmentObject private var coordinator: AppCoordinator
    @StateObject private var viewModel: DetailViewModel
    private let itemID: Int

    init(itemID: Int) {
        self.itemID = itemID
        _viewModel = StateObject(wrappedValue: DetailViewModel(itemID: itemID))
    }

    var body: some View {
        VStack(spacing: 20) {
            Text(viewModel.detailText)
            Button("Go Back") { coordinator.goBack() }
        }
        .navigationTitle("Detail")
    }
}
