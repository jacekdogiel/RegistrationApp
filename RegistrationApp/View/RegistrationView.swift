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
            Section(header: Text("Registration Form")) {
                VStack(alignment: .leading) {
                    TextField("Name", text: $viewModel.name)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    if !viewModel.isNameValid {
                        Text("Name is required")
                            .foregroundColor(.red)
                    }
                }
                
                VStack(alignment: .leading) {
                    TextField("Email", text: $viewModel.email)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .autocapitalization(.none)
                    
                    if !viewModel.isEmailValid {
                        Text("Invalid email")
                            .foregroundColor(.red)
                    }
                }
                
                DatePicker(
                    "Date of Birth",
                    selection: $viewModel.dateOfBirth,
                    in: viewModel.dateRange,
                    displayedComponents: .date
                )
            }
            
            Section {
                Button("Register") {
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
