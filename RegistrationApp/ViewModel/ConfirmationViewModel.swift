//
//  ConfirmationViewModel.swift
//  RegistrationApp
//
//  Created by Jacek Dogiel on 16/09/2023.
//
import Foundation

final class ConfirmationViewModel {
    let name: String
    let email: String
    let dateOfBirth: Date
    
    var formattedDate: String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .medium
        return dateFormatter.string(from: dateOfBirth)
    }
    
    init(name: String, email: String, dateOfBirth: Date) {
        self.name = name
        self.email = email
        self.dateOfBirth = dateOfBirth
    }
}
