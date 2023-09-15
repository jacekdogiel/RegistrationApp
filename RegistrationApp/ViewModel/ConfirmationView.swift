//
//  ConfirmationView.swift
//  RegistrationApp
//
//  Created by Jacek Dogiel on 15/09/2023.
//

import SwiftUI

struct ConfirmationView: View {
    @ObservedObject var viewModel: RegistrationViewModel
    
    var body: some View {
        VStack {
            Text("Thank you for registering")
                .font(.title)
                .padding()
            
            Text("Name: \(viewModel.name)")
            Text("Email: \(viewModel.email)")
            Text("Date of Birth: \(viewModel.formattedDate)")
        }
    }
}

struct ConfirmationView_Previews: PreviewProvider {
    static var previews: some View {
        ConfirmationView(viewModel: RegistrationViewModel())
    }
}
