//
//  ConfirmationViewBuilderTests.swift
//  RegistrationAppTests
//
//  Created by Jacek Dogiel on 16/09/2023.
//

import XCTest
@testable import RegistrationApp

class ConfirmationViewBuilderTests: XCTestCase {

    func testBuildConfirmationView() {
        let registrationViewModel = RegistrationViewModel()
        registrationViewModel.name = "John Doe"
        registrationViewModel.email = "john@example.com"
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd"
        
        let testDate = dateFormatter.date(from: "2000-12-31")!
        registrationViewModel.dateOfBirth = testDate

        let confirmationView = ConfirmationViewBuilder.build(registrationViewModel: registrationViewModel)

        let viewModel = confirmationView.viewModel

        XCTAssertEqual(viewModel.name, "John Doe")
        XCTAssertEqual(viewModel.email, "john@example.com")
        XCTAssertEqual(viewModel.dateOfBirth, testDate)
    }
}
