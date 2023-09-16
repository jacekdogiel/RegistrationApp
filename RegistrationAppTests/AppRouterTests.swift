//
//  AppRouterTests.swift
//  RegistrationAppTests
//
//  Created by Jacek Dogiel on 15/09/2023.
//

import XCTest
@testable import RegistrationApp

final class AppRouterTests: XCTestCase {

    func testNavigateToRegistration() {
        let router = AppRouter()
        router.navigate(to: .registration)
        
        XCTAssertEqual(router.currentView, .registration)
    }
    
    func testNavigateToConfirmation() {
        let router = AppRouter()
        router.navigate(to: .confirmation)
        
        XCTAssertEqual(router.currentView, .confirmation)
    }
    
    func testInitialCurrentView() {
        let router = AppRouter()
        
        XCTAssertEqual(router.currentView, .registration)
    }
}
