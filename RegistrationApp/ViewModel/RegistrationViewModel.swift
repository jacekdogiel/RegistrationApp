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
    @Published var dateOfBirth = Date()
    
    @Published var isNameValid = true
    @Published var isEmailValid = true
    @Published var isDateOfBirthValid = true
    
    var formattedDate: String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .medium
        return dateFormatter.string(from: dateOfBirth)
    }
}
