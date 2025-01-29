//
//  RootView.swift
//  CelestialEmber
//
//  Created by Dmytro Yantsybaiev on 27.01.2025.
//

import SwiftUI

struct RootView: View {

    private let viewModel: RootViewModel

    var body: some View {
        Text("Hello, World!")
    }

    init(_ viewModel: RootViewModel) {
        self.viewModel = viewModel
    }
}

#Preview {
    let viewModel = RootViewModel()
    let view = RootView(viewModel)
    return view
}
