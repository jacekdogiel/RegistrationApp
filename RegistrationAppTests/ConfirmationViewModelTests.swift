//
//  ConfirmationViewModelTests.swift
//  RegistrationAppTests
//
//  Created by Jacek Dogiel on 16/09/2023.
//

import XCTest
@testable import RegistrationApp

class ConfirmationViewModelTests: XCTestCase {

    func testFormattedDate() {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd"
        let testDate = dateFormatter.date(from: "2000-12-31")!

        let viewModel = ConfirmationViewModel(name: "John Doe", email: "john@example.com", dateOfBirth: testDate)

        dateFormatter.dateStyle = .medium
        let expectedFormattedDate = dateFormatter.string(from: testDate)

        XCTAssertEqual(viewModel.formattedDate, expectedFormattedDate)
    }
}
