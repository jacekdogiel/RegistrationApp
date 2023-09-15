//
//  RegistrationViewModel.swift
//  RegistrationAppTests
//
//  Created by Jacek Dogiel on 15/09/2023.
//

import XCTest
@testable import RegistrationApp

class RegistrationViewModelTests: XCTestCase {
    
    var viewModel: RegistrationViewModel!
    
    override func setUp() {
        super.setUp()
        viewModel = RegistrationViewModel()
    }
    
    override func tearDown() {
        viewModel = nil
        super.tearDown()
    }
    
    func testIsFormValidWithValidInput() {
        viewModel.name = "John Doe"
        viewModel.email = "john.doe@example.com"
        
        XCTAssertTrue(viewModel.isFormValid())
    }
    
    func testIsFormValidWithEmptyName() {
        viewModel.name = ""
        viewModel.email = "john.doe@example.com"
        
        XCTAssertFalse(viewModel.isFormValid())
    }
    
    func testIsFormValidWithInvalidEmail() {
        viewModel.name = "John Doe"
        viewModel.email = "invalid-email"
        
        XCTAssertFalse(viewModel.isFormValid())
    }
    
    func testIsFormValidWithEmptyEmail() {
        viewModel.name = "John Doe"
        viewModel.email = ""
        
        XCTAssertFalse(viewModel.isFormValid())
    }

    func testIsFormValidWithEmptyNameAndEmail() {
        viewModel.name = ""
        viewModel.email = ""
        
        XCTAssertFalse(viewModel.isFormValid())
    }
    
    func testFormattedDate() {
        viewModel.dateOfBirth = Calendar.current.date(from: DateComponents(year: 1990, month: 5, day: 15))!
        
        XCTAssertEqual(viewModel.formattedDate, "5/15/90")
    }
    
    func testMinimumDate() {
        XCTAssertEqual(viewModel.minimumDate, Calendar.current.date(from: DateComponents(year: 1900, month: 1, day: 1))!)
    }
    
    func testMaximumDate() {
        XCTAssertEqual(viewModel.maximumDate, Calendar.current.date(from: DateComponents(year: 2019, month: 12, day: 31))!)
    }
}

