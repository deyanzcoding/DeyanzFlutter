# login_page

A new Flutter project. I am practice on Login page.

## Getting Started
App Testing Flow

1. First Launch (No Credentials)

When the app is opened for the first time:
isLoggedIn is false by default.
The app shows LoginScreen.
User clicks "Sign Up" → navigates to SignupScreen.

2. Signup

User enters valid signup details:
Name: John
Email: john@example.com
Password: password123
Confirm Password: password123
After clicking "SIGN UP":
The form validates the inputs.
Credentials are saved.
isLoggedIn is set to true.
The app navigates to HomeScreen.

3. Logout

On HomeScreen, the user clicks "Logout":
isLoggedIn is set to false.
The app navigates back to LoginScreen.
Saved credentials (username, useremail, userpassword) remain stored.

4. Login

On LoginScreen, the user enters their saved credentials:
Email: john@example.com
Password: password123
After clicking "LOGIN":
The credentials are validated.
isLoggedIn is set to true.
The app navigates to HomeScreen.

5. App Restart

When the app is closed and reopened:
If isLoggedIn = true, it opens HomeScreen.
If isLoggedIn = false, it opens LoginScreen.

✅ Summary (short):

First Launch → LoginScreen → Sign Up → HomeScreen
Logout → LoginScreen (credentials stored)
Login → HomeScreen
Restart → Check isLoggedIn → Open correct screen





A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
