import 'package:flutter/material.dart';
import 'phone_number_screen.dart';

class WelcomeScreen extends StatefulWidget {

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  void _navigateToPhoneNumberScreen() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => PhoneNumberScreen()),
    );
  }

  void _navigateToSignIn() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => SignInPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(),
              Image.asset('images/main_logo.png', height: 100, fit: BoxFit.contain,),

              // SizedBox(height: 25,),
              Text(
                'Welcome to',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              Text(
                'Momotaro UI Kit',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF7265E3),
                ),
              ),

              SizedBox(height: 12,),
              Text(
                "The best UI Kit for your next\nhealth and fitness project!",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                  height: 1.5,
                ),
              ),

              Spacer(),
              SizedBox(
                height: 300,
                child: Image.asset(
                  'images/welcome_image.png',
                  fit: BoxFit.contain,
                ),
              ),
              Spacer(),

              SizedBox(
                width: double.infinity,
                height: 56,
                child: ElevatedButton(
                    onPressed: _navigateToPhoneNumberScreen,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF7265E3),
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      )
                    ),
                    child: Text(
                      'Get Started',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    )
                ),
              ),

              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already have an account? ',
                    style: TextStyle(color: Colors.grey, fontSize: 15),
                  ),
                  GestureDetector(
                    onTap: _navigateToSignIn,
                    child: Text(
                      'Sign In',
                      style: TextStyle(
                        color: Color(0xFF7265E3),
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ],
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Register'), backgroundColor: Color(0xFF9B9AD4), foregroundColor: Colors.white,),
      body: Center(child: Text('Register Screen PlaceHolder'),),
    );
  }
}

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Sign In'), backgroundColor: Color(0xFF9B9AD4), foregroundColor: Colors.white,),
      body: Center(child: Text('SignIn Screen PlaceHolder'),),
    );
  }
}