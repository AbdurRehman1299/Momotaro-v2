import 'package:assignment1/screens/notification_enable_screen.dart';
import 'package:flutter/material.dart';

class FitnessLevelScreen extends StatefulWidget {
  @override
  State<FitnessLevelScreen> createState() => _FitnessLevelScreenState();
}

class _FitnessLevelScreenState extends State<FitnessLevelScreen>{
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
                        padding: EdgeInsets.symmetric(horizontal: 20,),
                        child: Container(
                          height: 6,
                          decoration: BoxDecoration(
                            color: Colors.deepPurple[50],
                            borderRadius: BorderRadius.circular(10),
                          ),
                          alignment: Alignment.centerLeft,

                          child: FractionallySizedBox(
                            widthFactor: 5 / 7,
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

                    SizedBox(width: 40,),
                  ],
                ),

                SizedBox(width: 30,),
                Text('STEP 5/7', style: TextStyle(color: Color(0xFF6A62B7), fontWeight: FontWeight.bold, fontSize: 14, letterSpacing: 1.5),),

                SizedBox(height: 20,),
                Text("What's your current\nfitness level?", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 28,), textAlign: TextAlign.center,),

                SizedBox(height: 40,),
                Expanded(
                  child: Container(
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(horizontal: 24, vertical: 30,),
                    decoration: BoxDecoration(
                      color: Color(0xFFEBEAFA),
                      borderRadius: BorderRadius.circular(24),
                    ),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8,),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(Icons.local_fire_department, size: 20, color: Color(0xFF6A62B7)),
                                SizedBox(width: 4),
                                Icon(Icons.local_fire_department, size: 20, color: Color(0xFF6A62B7)),
                                SizedBox(width: 4),
                                Icon(Icons.local_fire_department, size: 20, color: Colors.grey[300]),
                              ],
                            ),
                          ),
                        ),

                        Spacer(),
                        Image.asset('images/fitness_level.png'),

                        Spacer(),
                        Text('Moderate Intensity', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.black87,),),
                        SizedBox(height: 12,),
                        Text('I always work out regularly two or three times a week.', textAlign: TextAlign.center, style: TextStyle(fontSize: 15, height: 1.4, color: Colors.grey[600],),),

                        Spacer(),
                        SizedBox(
                          width: double.infinity,
                          height: 56,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => NotificationScreen()),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFF6A62B7),
                              foregroundColor: Colors.white,
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16),),
                              elevation: 0,
                            ),
                            child: Text('Select', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,),),
                          ),
                        )
                      ],
                    ),
                  ),
                ),

                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(width: 10, height: 10, decoration: BoxDecoration(color: Colors.deepPurple[100], shape: BoxShape.circle),),
                    SizedBox(width: 10,),
                    Container(width: 10, height: 10, decoration: BoxDecoration(color: Color(0xFF6A62B7), shape: BoxShape.circle)), // Active dot
                    SizedBox(width: 10,),
                    Container(width: 10, height: 10, decoration: BoxDecoration(color: Colors.deepPurple[100], shape: BoxShape.circle),),
                  ],
                ),

                SizedBox(height: 20,),
              ],
            ),
          )
      ),
    );
  }
}