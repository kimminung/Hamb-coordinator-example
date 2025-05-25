//
//  HomeView.swift
//  HambTest
//
//  Created by coulson on 5/25/25.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject private var coordinator: AppCoordinator
    @StateObject private var viewModel = HomeViewModel()

    var body: some View {
        List(viewModel.items) { item in
            Button(item.title) {
                coordinator.showDetail(for: item.id)
            }
        }
        .navigationTitle("Home")
    }
}
