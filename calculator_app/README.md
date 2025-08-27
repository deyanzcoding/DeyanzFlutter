### Flutter Calculator App

Overview
This is a simple calculator application built with Flutter and the math_expressions package. It provides basic arithmetic operations (addition, subtraction, multiplication, division), percentage calculations, sign toggling, and input deletion. The app features a clean, dark-themed UI with outlined buttons and a clickable screenshot, inspired by standard mobile calculators, with a focus on usability and error handling.
Features

Basic Arithmetic Operations: Supports addition (+), subtraction (-), multiplication (x), division (/), and percentage (%).
Sign Toggle: Use the +/- button to toggle the sign of the current input.
Decimal Support: Allows decimal numbers with validation to prevent multiple decimal points in a single number.
Error Handling: Displays "Error" for invalid expressions (e.g., 2++3, empty input).
Result Reuse: After pressing =, the result can be used as the starting point for the next calculation by pressing a number or decimal point.
Input Validation: Prevents consecutive operators (e.g., ++, x-) by replacing the last operator.
Responsive UI: Dark-themed interface with right-aligned input and result display, using a scrollable input field for long expressions.
Interactive Screenshot: An "About" screen displays a clickable screenshot with a white outline, showing a dialog with app information when tapped.
Visual Feedback:

All buttons have a white outline for better visibility on the dark background.
The = button highlights briefly in red when pressed for enhanced user interaction.



Screenshots

Click the screenshot in the app’s "About" screen (accessible via the info icon in the app bar) to view a description dialog.
Prerequisites

Flutter SDK: Version 3.0.0 or higher.
Dart: Included with Flutter.
IDE: VS Code, Android Studio, or any IDE with Flutter support.
Dependencies:
math_expressions: ^3.1.0 (for evaluating mathematical expressions).



Setup Instructions

Clone the Repository:
git clone <repository-url>
cd calculator_app


Update pubspec.yaml:Ensure the pubspec.yaml includes the dependency and asset:
dependencies:
flutter:
sdk: flutter
math_expressions: ^3.1.0

flutter:
assets:
- assets/screenshots/calculator_screenshot.png

Run:
flutter pub get


Run the App:Connect a device or emulator and run:
flutter run



Project Structure
calculator_app/
├── assets/
│   └── screenshots/
│       └── calculator_screenshot.png  # Screenshot of the app
├── lib/
│   ├── components/
│   │   └── button_component.dart      # Custom button widget (MyButton)
│   └── main.dart                      # Main app code with UI and logic
├── pubspec.yaml                       # Project dependencies and metadata
└── README.md                          # This file

Usage

Input Numbers and Operators: Press number buttons (0–9) and operators (+, -, x, /) to build an expression. All buttons have a white outline for clarity.
Calculate: Press = to evaluate the expression (e.g., 2+3 yields 5.00). The button briefly highlights in red.
Reuse Result: After pressing =, start a new calculation with the result by pressing a number (e.g., after 2+3=5.00, press 2 to get 5.002).
Clear: Use AC to reset both input and result.
Toggle Sign: Press +/- to switch the sign of the current input.
Percentage: Press % to convert the current input to a percentage (e.g., 50% becomes 0.50).
Delete: Press DEL to remove the last character from the input.
Error Handling: Invalid inputs (e.g., 2++3, multiple decimals like 2.3.4) display "Error".
About Screen: Tap the info icon in the app bar to view the screenshot, which has a white outline and can be clicked to show an app description dialog.

Known Issues

Limited Features: Currently supports basic arithmetic. Advanced features like parentheses or scientific functions (e.g., sin, cos) are not implemented.
UI Scaling: Long inputs may require further optimization for smaller screens.

Future Improvements

Add a calculation history feature to display previous expressions and results.
Implement a C button to clear only the current input, preserving the last result.
Support advanced operations (e.g., parentheses, square roots, exponents).
Enhance responsiveness with dynamic font sizes using MediaQuery.
Add animations for other button presses beyond the = button.

Contributing
Contributions are welcome! Please:

Fork the repository.
Create a feature branch (git checkout -b feature/new-feature).
Commit your changes (git commit -m 'Add new feature').
Push to the branch (git push origin feature/new-feature).
Open a pull request.

