# Registration App

## Overview

The Registration App is a simple iOS application built using SwiftUI. It allows users to register by providing their name, email, and date of birth. The app then confirms the registration and displays the user's information.

## Architecture

The app follows the Model-View-ViewModel (MVVM) architectural pattern, separating concerns into different components:

- **View**: SwiftUI views such as `RegistrationView` and `ConfirmationView` responsible for rendering the user interface.
- **ViewModel**: `RegistrationViewModel` manages the application's data and business logic. It communicates with the view to provide data and handle user interactions.
- **Model**: There is no separate model layer in this app. Data is managed within the `RegistrationViewModel` and `ConfirmationViewModel`.

## Key Classes

### AppRouter

- Class responsible for routing and managing the current view state.
- Uses the `ObservableObject` protocol to publish changes to the current view.
- Allows navigation between the registration and confirmation views.

### ConfirmationViewModel

- Contains properties for name, email, date of birth.
- Provides computed property for formatting date.

### RegistrationViewModel

- Manages user input and validation for the registration process.
- Contains properties for name, email, date of birth, and validation flags.
- Provides computed properties defining date ranges.
- Implements validation logic for name and email.
- Provides a method to check the validity of the registration form.

### RegistrationView

- SwiftUI view that presents the registration form to the user.
- Binds to the `RegistrationViewModel` to display and update user input.
- Utilizes the `ObservableObject` protocol for updating the UI when data changes.
- Validates user input and displays error messages.

### ConfirmationView

- SwiftUI view that confirms user registration.
- Displays user information retrieved from the `ConfirmationViewModel`.

### ConfirmationViewBuilder

- Struct that provides a method to build a `ConfirmationView` from a `RegistrationViewModel`.

### AppView

- Enum defining the possible views in the app: `registration` and `confirmation`.

## Testing Strategy

The app's functionality is thoroughly tested using XCTest, Apple's unit testing framework:

- **AppRouterTests**: Tests the navigation functionality of the `AppRouter` class, ensuring it correctly updates the current view state.

- **ConfirmationViewModelTests**: Tests the business logic of the `ConfirmationViewModel` class, covering date formatting.

- **RegistrationViewModelTests**: Tests the business logic of the `RegistrationViewModel` class, covering input validation and date range.

- **ConfirmationViewBuilderTests**: Tests the `ConfirmationViewBuilder` struct, verifying that it correctly builds a `ConfirmationView` based on a `RegistrationViewModel`.

## Contact

- Jacek Dogiel
- jacek.dogiel@gmail.com


