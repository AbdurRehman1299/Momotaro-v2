import 'package:flutter/material.dart';
import 'goal_screen.dart';

class InterestScreen extends StatefulWidget {
  @override
  _InterestScreenState createState() => _InterestScreenState();
}

class _InterestScreenState extends State<InterestScreen> {
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
                              widthFactor: 2 / 7,
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
                      child: Text('Skip', style: TextStyle(color: Color(0xFF6A62B7), fontWeight: FontWeight.bold),)
                  )
                ],
              ),

              SizedBox(height: 30,),
              Text('STEP 2/7', style: TextStyle(color: Color(0xFF6A62B7), fontWeight: FontWeight.bold, fontSize: 14, letterSpacing: 1.5),),

              SizedBox(height: 20,),
              Text('Time to customize\nyour interest', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 28,), textAlign: TextAlign.center,),

              SizedBox(height: 30,),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 3,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 20,
                  childAspectRatio: 0.8,

                  children: [
                    Column(
                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(color: Colors.grey.shade100),
                              boxShadow: [ BoxShadow(color: Colors.grey.withValues(alpha: 0.05), blurRadius: 10, offset: Offset(0, 5)) ],
                            ),
                            child: Center(child: Image.asset("images/interest_selection/watermelon.png", width: 40, height: 40)),
                          ),
                        ),
                        SizedBox(height: 8),
                        Text("Nutrition", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 13)),
                      ],
                    ),

                    Column(
                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(color: Colors.grey.shade100),
                              boxShadow: [ BoxShadow(color: Colors.grey.withValues(alpha: 0.05), blurRadius: 10, offset: Offset(0, 5)) ],
                            ),
                            child: Center(child: Image.asset("images/interest_selection/organic.png", width: 40, height: 40)),
                          ),
                        ),
                        SizedBox(height: 8),
                        Text("Organic", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 13)),
                      ],
                    ),

                    Column(
                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(color: Colors.grey.shade100),
                              boxShadow: [ BoxShadow(color: Colors.grey.withValues(alpha: 0.05), blurRadius: 10, offset: Offset(0, 5)) ],
                            ),
                            child: Center(child: Image.asset("images/interest_selection/meditation.png", width: 40, height: 40)),
                          ),
                        ),
                        SizedBox(height: 8),
                        Text("Meditation", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 13)),
                      ],
                    ),

                    Column(
                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              color: const Color(0xFFFF9E9E),
                              borderRadius: BorderRadius.circular(20),
                              border: null,
                            ),
                            child: Center(child: Image.asset("images/interest_selection/sports.png", width: 40, height: 40)),
                          ),
                        ),
                        SizedBox(height: 8),
                        Text("Sports", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 13)),
                      ],
                    ),

                    Column(
                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(color: Colors.grey.shade100),
                              boxShadow: [ BoxShadow(color: Colors.grey.withValues(alpha: 0.05), blurRadius: 10, offset: Offset(0, 5)) ],
                            ),
                            child: Center(child: Image.asset("images/interest_selection/smoke_free.png", width: 40, height: 40)),
                          ),
                        ),
                        SizedBox(height: 8),
                        Text("Smoke Free", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 13)),
                      ],
                    ),

                    Column(
                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(color: Colors.grey.shade100),
                              boxShadow: [ BoxShadow(color: Colors.grey.withValues(alpha: 0.05), blurRadius: 10, offset: Offset(0, 5)) ],
                            ),
                            child: Center(child: Image.asset("images/interest_selection/sleep.png", width: 40, height: 40)),
                          ),
                        ),
                        SizedBox(height: 8),
                        Text("Sleep", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 13)),
                      ],
                    ),

                    Column(
                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(color: Colors.grey.shade100),
                              boxShadow: [ BoxShadow(color: Colors.grey.withValues(alpha: 0.05), blurRadius: 10, offset: Offset(0, 5)) ],
                            ),
                            child: Center(child: Image.asset("images/interest_selection/health.png", width: 40, height: 40)),
                          ),
                        ),
                        SizedBox(height: 8),
                        Text("Health", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 13)),
                      ],
                    ),

                    Column(
                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color(0xFF8B80F8),
                              borderRadius: BorderRadius.circular(20),
                              border: null,
                            ),
                            child: Center(child: Image.asset("images/interest_selection/running.png", width: 40, height: 40)),
                          ),
                        ),
                        SizedBox(height: 8),
                        Text("Running", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 13)),
                      ],
                    ),

                    Column(
                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color(0xFF6FE1D8),
                              borderRadius: BorderRadius.circular(20),
                              border: null,
                            ),
                            child: Center(child: Image.asset("images/interest_selection/vegan.png", width: 40, height: 40)),
                          ),
                        ),
                        SizedBox(height: 8),
                        Text("Vegan", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 13)),
                      ],
                    ),
                  ],
                ),
              ),

              SizedBox(height: 30,),
              SizedBox(
                width: double.infinity,
                height: 56,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => GoalScreen())
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
            ],
          ),
        ),
      ),
    );
  }
}