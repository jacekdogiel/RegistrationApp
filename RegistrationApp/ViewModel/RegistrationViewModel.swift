//
//  RegistrationViewModel.swift
//  RegistrationApp
//
//  Created by Jacek Dogiel on 15/09/2023.
//

import SwiftUI

class RegistrationViewModel: ObservableObject {
    @Published var name = ""
    @Published var email = ""
    
    @Published var isNameValid = true
    @Published var isEmailValid = true
    @Published var isDateOfBirthValid = true
    
    var formattedDate: String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .medium
        return dateFormatter.string(from: dateOfBirth)
    }
    
    var minimumDate: Date {
        return calendar.date(from: Constants.minimumDate) ?? Date()
    }
    
    var maximumDate: Date {
        return calendar.date(from: Constants.maximumDate) ?? Date()
    }
    
    lazy var dateOfBirth: Date = {
        return maximumDate
    }()
    
    let calendar = Calendar.current
    
    func isFormValid() -> Bool {
        isNameValid = !name.trimmingCharacters(in: .whitespaces).isEmpty
        isEmailValid = isValidEmail(email)
        
        if isNameValid && isEmailValid {
            return true
        }
        return false
    }
    
    private func isValidEmail(_ email: String) -> Bool {
        let emailRegex = Constants.emailRegex
        let emailPredicate = NSPredicate(format: "SELF MATCHES %@", emailRegex)
        return emailPredicate.evaluate(with: email)
    }
    
    struct Constants {
        static let emailRegex = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
        static let minimumDate = DateComponents(year: 1900, month: 1, day: 1)
        static let maximumDate = DateComponents(year: 2019, month: 12, day: 31)
    }
}
