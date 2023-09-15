//
//  RegistrationApp.swift
//  RegistrationApp
//
//  Created by Jacek Dogiel on 15/09/2023.
//

import SwiftUI

@main
struct RegistrationApp: App {
    @StateObject private var viewModel = RegistrationViewModel()
    @StateObject private var router = AppRouter()
    
    var body: some Scene {
        WindowGroup {
            switch router.currentView {
            case .registration:
                RegistrationView(viewModel: viewModel, router: router)
            case .confirmation:
                ConfirmationView(viewModel: viewModel)
            }
        }
    }
}
