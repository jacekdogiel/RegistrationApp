//
//  AppRouter.swift
//  RegistrationApp
//
//  Created by Jacek Dogiel on 15/09/2023.
//
import SwiftUI

final class AppRouter: ObservableObject {
    @Published var currentView: AppView = .registration
    private var navigationStack: [AppView] = []

    func navigate(to view: AppView) {
        withAnimation(.easeInOut(duration: 0.3)) {
            navigationStack.append(currentView)
            currentView = view
        }
    }

    func navigateBack() {
        guard let previousView = navigationStack.popLast() else { return }
        withAnimation(.easeInOut(duration: 0.3)) {
            currentView = previousView
        }
    }
}
