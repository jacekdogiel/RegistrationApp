//
//  AppRouter.swift
//  RegistrationApp
//
//  Created by Jacek Dogiel on 15/09/2023.
//
import SwiftUI

class AppRouter: ObservableObject {
    @Published var currentView: AppView = .registration
    
    func navigate(to view: AppView) {
        currentView = view
    }
}
