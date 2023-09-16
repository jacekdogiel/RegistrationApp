//
//  ContentView.swift
//  RegistrationApp
//
//  Created by Jacek Dogiel on 15/09/2023.
//

import SwiftUI

struct RegistrationView: View {
    @ObservedObject var viewModel: RegistrationViewModel
    @ObservedObject var router: AppRouter
    
    var body: some View {
        Form {
            Section(header: Text("registration_register_form_title")) {
                VStack(alignment: .leading) {
                    TextField("registration_name", text: $viewModel.name)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    if !viewModel.isNameValid {
                        Text("registration_name_required")
                            .foregroundColor(.red)
                    }
                }
                
                VStack(alignment: .leading) {
                    TextField("registration_email", text: $viewModel.email)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .autocapitalization(.none)
                    
                    if !viewModel.isEmailValid {
                        Text("registration_email_invalid")
                            .foregroundColor(.red)
                    }
                }
                
                DatePicker(
                    "registration_date_of_birth",
                    selection: $viewModel.dateOfBirth,
                    in: viewModel.dateRange,
                    displayedComponents: .date
                )
            }
            
            Section {
                Button("registration_register_button_title") {
                    if viewModel.isFormValid() {
                        router.navigate(to: .confirmation)
                    }
                }
            }
        }
    }
}

struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView(
            viewModel: RegistrationViewModel(),
            router: AppRouter()
        )
    }
}
