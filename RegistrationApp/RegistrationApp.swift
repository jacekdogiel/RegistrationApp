//
//  RegistrationApp.swift
//  RegistrationApp
//
//  Created by Jacek Dogiel on 15/09/2023.
//

import SwiftUI

@main
struct RegistrationApp: App {
    var body: some Scene {
        WindowGroup {
            RegistrationView(viewModel: RegistrationViewModel())
        }
    }
}
