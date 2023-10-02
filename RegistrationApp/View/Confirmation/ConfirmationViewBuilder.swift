//
//  ConfirmationViewBuilder.swift
//  RegistrationApp
//
//  Created by Jacek Dogiel on 16/09/2023.
//

struct ConfirmationViewBuilder {
    static func build(registrationViewModel: RegistrationViewModel, router: AppRouter) -> ConfirmationView {
        let confirmationViewModel = ConfirmationViewModel(
            name: registrationViewModel.name,
            email: registrationViewModel.email,
            dateOfBirth: registrationViewModel.dateOfBirth
        )
        return ConfirmationView(router: router, viewModel: confirmationViewModel)
    }
}
