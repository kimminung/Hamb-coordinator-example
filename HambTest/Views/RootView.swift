//
//  ContentView.swift
//  HambTest
//
//  Created by coulson on 5/25/25.
//

import SwiftUI

struct RootView: View {
    @StateObject private var coordinator = AppCoordinator()

    var body: some View {
        NavigationStack(path: $coordinator.path) {
            HomeView()
                .environmentObject(coordinator)
                .navigationDestination(for: Route.self) { route in
                    switch route {
                    case .home:
                        HomeView().environmentObject(coordinator)
                    case .detail(let itemID):
                        DetailView(itemID: itemID)
                            .environmentObject(coordinator)
                    }
                }
        }
        .onAppear { coordinator.start() }
    }
}
