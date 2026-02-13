import 'fitness_level_screen.dart';
import 'package:flutter/material.dart';

class GenderScreen extends StatefulWidget {
  @override
  _GenderScreenState createState() => _GenderScreenState();
}

class _GenderScreenState extends State<GenderScreen> {
  bool isMale = true;
  bool isFemale = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24, vertical: 10,),
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
                            widthFactor: 8 / 11,
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

                SizedBox(height: 30,),
                Text('STEP 8/11', style: TextStyle(color: Color(0xFF6A62B7), fontWeight: FontWeight.bold, fontSize: 14, letterSpacing: 1.5),),

                SizedBox(height: 20,),
                Text('Which one are you?', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 28,), textAlign: TextAlign.center,),

                SizedBox(height: 40,),
                Row(
                  children: [
                    Expanded(
                        child: GestureDetector(
                          onTap: () { setState(() {
                            isMale = true;
                            isFemale = false;
                          });},
                          child: Container(
                            height: 200,
                            decoration: BoxDecoration(
                              color: isMale ? Color(0xFF7F77FF) : Colors.white,
                              borderRadius: BorderRadius.circular(24),
                              boxShadow: [
                                BoxShadow(color: Colors.grey.withValues(alpha: 0.1), blurRadius: 15, offset: Offset(0, 5),),
                              ],
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset('images/gender_selection/male.png'),
                                SizedBox(height: 20,),
                                Text('Male', style: TextStyle(color: isMale ? Colors.white : Colors.grey[600], fontWeight: FontWeight.bold, fontSize: 16,),),
                              ],
                            ),
                          ),
                        ),
                    ),

                    const SizedBox(width: 20),

                    Expanded(
                      child: GestureDetector(
                        onTap: () { setState(() {
                          isFemale = true;
                          isMale = false;
                        });},
                        child: Container(
                          height: 200,
                          decoration: BoxDecoration(
                            color: isFemale ? Color(0xFF7F77FF) : Colors.white,
                            borderRadius: BorderRadius.circular(24),
                            boxShadow: [
                              BoxShadow(color: Colors.grey.withValues(alpha: 0.1), blurRadius: 15, offset: Offset(0, 5),),
                            ],
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset('images/gender_selection/female.png'),
                              SizedBox(height: 20,),
                              Text('Female', style: TextStyle(color: isFemale ? Colors.white : Colors.grey[600], fontWeight: FontWeight.bold, fontSize: 16,),),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 30),
                SizedBox(
                  width: 250,
                  child: Text("To give you a customize experience we need to know your gender", textAlign: TextAlign.center, style: TextStyle(color: Colors.grey[500], fontSize: 14, height: 1.5),),
                ),
                Spacer(),
                SizedBox(
                  width: double.infinity,
                  height: 56,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => FitnessLevelScreen())
                        );
                      },
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

                SizedBox(height: 15),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Prefer not to choose",
                    style: TextStyle(color: Color(0xFF6A62B7), fontSize: 15, fontWeight: FontWeight.w600),
                  ),
                ),
                SizedBox(height: 10),
              ],
            ),
        ),
      ),
    );
  }
}