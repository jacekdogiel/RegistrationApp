//
//  ContentView.swift
//  RegistrationApp
//
//  Created by Jacek Dogiel on 15/09/2023.
//

import SwiftUI

struct RegistrationView: View {
    @ObservedObject var viewModel: RegistrationViewModel
    
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
                
                VStack(alignment: .leading) {
                    DatePicker("Date of Birth", selection: $viewModel.dateOfBirth, in: ...Date(), displayedComponents: .date)
                    
                    if !viewModel.isDateOfBirthValid {
                        Text("Must be a valid date between Jan 1, 1900 and December 31, 2019")
                            .foregroundColor(.red)
                    }
                }
            }
            
            Section {
                Button("Register") {
                    //
                }
            }
        }
    }
}

struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView(viewModel: RegistrationViewModel())
    }
}
