import 'package:flutter/material.dart';

class NotificationScreen extends StatefulWidget {
  @override
  _NotificationScreenState createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
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
                          widthFactor: 10 / 11,
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
                    onPressed: () {},
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

              SizedBox(height: 20),
              Text(
                'STEP 10/11',
                style: TextStyle(
                    color: Color(0xFF6A62B7),
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    letterSpacing: 1.5
                ),
              ),

              SizedBox(height: 15),

              Text(
                'Do you want to turn\non notification?',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                    height: 1.2
                ),
              ),

              SizedBox(height: 30),
              Image.asset('images/notification.png'),

              SizedBox(height: 40),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        boxShadow: [BoxShadow(color: Colors.grey.withValues(alpha: 0.1), blurRadius: 5)]
                    ),
                    child: Icon(Icons.auto_awesome, color: Color(0xFF6A62B7), size: 20),
                  ),
                  SizedBox(width: 15),
                  Text(
                    "New weekly healthy reminder",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: Colors.black87),
                  )
                ],
              ),

              SizedBox(height: 20),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        boxShadow: [BoxShadow(color: Colors.grey.withValues(alpha: 0.1), blurRadius: 5)]
                    ),
                    child: Icon(Icons.local_fire_department, color: Color(0xFF6A62B7), size: 20),
                  ),
                  SizedBox(width: 15),
                  Text(
                    "Motivational reminder",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: Colors.black87),
                  )
                ],
              ),

              SizedBox(height: 20),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        boxShadow: [BoxShadow(color: Colors.grey.withValues(alpha: 0.1), blurRadius: 5)]
                    ),
                    child: Icon(Icons.monitor_heart, color: Color(0xFF6A62B7), size: 20),
                  ),
                  SizedBox(width: 15),
                  Text(
                    "Personalised program",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: Colors.black87),
                  )
                ],
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
                      'Allow',
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