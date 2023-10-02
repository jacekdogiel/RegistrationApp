//
//  ConfirmationView.swift
//  RegistrationApp
//
//  Created by Jacek Dogiel on 15/09/2023.
//

import SwiftUI

struct ConfirmationView: View {
    let router: AppRouter
    let viewModel: ConfirmationViewModel
    
    var body: some View {
        VStack {
            VStack(alignment: .leading) {
                Text("confirmation_thank_register")
                    .font(.title)
                    .padding()
                
                Text(NSLocalizedString("confirmation_name", comment: "") + viewModel.name)
                Text(NSLocalizedString("confirmation_email", comment: "") + viewModel.email)
                Text(NSLocalizedString("confirmation_date_of_birth", comment: "") + viewModel.formattedDate)
                Spacer()
            }
            Button("confirmation_back") {
                router.navigateBack()
            }
        }
    }
}

struct ConfirmationView_Previews: PreviewProvider {
    static var previews: some View {
        ConfirmationView(router: AppRouter(), viewModel: ConfirmationViewModel(
            name: "John",
            email: "john@doe.com",
            dateOfBirth: Date())
        )
    }
}
