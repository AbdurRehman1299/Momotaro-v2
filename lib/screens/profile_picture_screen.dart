import 'package:flutter/material.dart';

class ProfilePictureScreen extends StatefulWidget {
  @override
  _ProfilePictureScreenState createState() => _ProfilePictureScreenState();
}

class _ProfilePictureScreenState extends State<ProfilePictureScreen> {
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
                      icon: Icon(Icons.arrow_back_ios, size: 20,),
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
                              widthFactor: 1 / 7,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Color(0xFF6A62B7),
                                  borderRadius: BorderRadius.circular(10)
                                ),
                              ),
                            ),
                          ),
                      ),
                  ),

                  TextButton(
                      onPressed: () {},
                      child: Text('Skip', style: TextStyle(color: Color(0xFF6A62B7), fontWeight: FontWeight.bold),),
                  )
                ],
              ),

              SizedBox(height: 30,),
              Text('Step 1/7', style: TextStyle(color: Color(0xFF6A62B7), fontWeight: FontWeight.bold, fontSize: 14, letterSpacing: 1.5),),

              SizedBox(height: 20,),
              Text('Profile Picture', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 28),),

              SizedBox(height: 60,),
              Center(
                child: Image.asset('images/profile_selection.png', height: 130, fit: BoxFit.contain,),
              ),

              Spacer(),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20,),
                  child: Text(
                    'You can select photo from one of this emoji or add your own photo as profile picture',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.grey, height: 1.5, fontSize: 15),
                  ),
              ),

              SizedBox(height: 20,),
              TextButton(
                  onPressed: () {},
                  child: Text('Add custom photo', style: TextStyle(color: Color(0xFF6A62B7), fontWeight: FontWeight.bold, fontSize: 16),),
              ),

              SizedBox(height: 30,),
              SizedBox(
                width: double.infinity,
                height: 56,
                child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF6A62B7),
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      elevation: 0,
                    ),
                    child: Text('Continue', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),)
                ),
              ),

              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}