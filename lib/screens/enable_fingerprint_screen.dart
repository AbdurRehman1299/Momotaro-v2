import 'package:assignment1/screens/profile_picture_screen.dart';
import 'package:flutter/material.dart';

class FingerprintScreen extends StatefulWidget {
  @override
  _FingerprintScreenState createState() => _FingerprintScreenState();
}

class _FingerprintScreenState extends State<FingerprintScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 10),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: Icon(Icons.arrow_back_ios, size: 20),
                    onPressed: () => Navigator.pop(context),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Container(
                        height: 6,
                        decoration: BoxDecoration(
                          color: Colors.deepPurple[50],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        alignment: Alignment.centerLeft,

                        child: FractionallySizedBox(
                          widthFactor: 4 / 11,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color(0xFF6A62B7),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ProfilePictureScreen()),
                      );
                    },
                    child: Text(
                      'Skip',
                      style: TextStyle(
                          color: Color(0xFF6A62B7),
                          fontWeight: FontWeight.bold,
                          fontSize: 16
                      ),
                    ),
                  )
                ],
              ),

              SizedBox(height: 40),
              Image.asset('images/fingerprint.png'),
              SizedBox(height: 40),
              Text(
                'STEP 4/11',
                style: TextStyle(
                    color: Color(0xFF6A62B7),
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    letterSpacing: 1.5
                ),
              ),

              SizedBox(height: 20),
              Text(
                'Enable Fingerprint',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 26,
                ),
              ),

              SizedBox(height: 20),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  'If you enable touch ID, you don\'t need to enter your password when you login.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.grey,
                      height: 1.5,
                      fontSize: 15
                  ),
                ),
              ),

              Spacer(),
              SizedBox(
                width: double.infinity,
                height: 56,
                child: ElevatedButton(
                    onPressed: () { print('Activated'); },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF6A62B7),
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      elevation: 0,
                    ),
                    child: Text(
                      'Activate',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    )
                ),
              ),

              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}