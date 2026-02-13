import 'package:flutter/material.dart';
import 'gender_screen.dart';

class GoalScreen extends StatefulWidget {
  @override
  _GoalScreenState createState() => _GoalScreenState();
}

class _GoalScreenState extends State<GoalScreen> {
  bool isWeightLoss = true;
  bool isSleep = true;
  bool isNutrition = false;
  bool isFitness = false;

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
                                  widthFactor: 7 / 11,
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
                      TextButton(onPressed: () {}, child: Text("Skip", style: TextStyle(color: Color(0xFF6A62B7), fontWeight: FontWeight.bold),),),
                    ],
                  ),

                  SizedBox(height: 30,),
                  Text('STEP 7/11', style: TextStyle(color: Color(0xFF6A62B7), fontWeight: FontWeight.bold, fontSize: 14, letterSpacing: 1.5),),

                  SizedBox(height: 20,),
                  Text('Let us know how we\ncan help you', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 28,), textAlign: TextAlign.center,),

                  SizedBox(height: 30,),
                  GestureDetector(
                    onTap: () { setState(() { isWeightLoss = !isWeightLoss; });},
                    child: Container(
                      height: 80,
                      padding: EdgeInsets.symmetric(horizontal: 20,),
                      decoration: BoxDecoration(
                        gradient: isWeightLoss ? LinearGradient(colors: [Color(0xFFFF9E9E), Color(0xFFFF7979)]) : null,
                        color: isWeightLoss ? null : Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        border: isWeightLoss ? null : Border.all(color: Colors.grey.shade200),
                        boxShadow: [
                          if (isWeightLoss)
                            BoxShadow(color: Color(0xFFFF9E9E).withValues(alpha: 0.3), blurRadius: 10, offset: Offset(0, 5),)
                          else
                            BoxShadow(color: Colors.grey.withValues(alpha: 0.05), blurRadius: 10, offset: Offset(0, 5),)
                        ]
                      ),

                      child: Row(
                        children: [
                          Image.asset('images/interest_selection/watermelon.png', width: 40,),
                          SizedBox(width: 15,),
                          Text('Weight Loss', style: TextStyle(color: isWeightLoss ? Colors.white : Colors.black87, fontWeight: FontWeight.bold, fontSize: 16),),
                          Spacer(),
                          Container(
                            width: 24, height: 24,
                            decoration: BoxDecoration(color: isWeightLoss ? Colors.white : Colors.grey[200], borderRadius: BorderRadius.circular(8),),
                            child: isWeightLoss ? Icon(Icons.check, size: 16, color: Color(0xFFFF7979),) : null,
                          ),
                        ],
                      ),
                    ),
                  ),

                  SizedBox(height: 15),
                  GestureDetector(
                    onTap: () { setState(() { isSleep = !isSleep; });},
                    child: Container(
                      height: 80,
                      padding: EdgeInsets.symmetric(horizontal: 20,),
                      decoration: BoxDecoration(
                          gradient: isSleep ? LinearGradient(colors: [Color(0xFF5B628F), Color(0xFF3D4264)]) : null,
                          color: isSleep ? null : Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          border: isSleep ? null : Border.all(color: Colors.grey.shade200),
                          boxShadow: [
                            if (isSleep)
                              BoxShadow(color: Color(0xFF5B628F).withValues(alpha: 0.3), blurRadius: 10, offset: Offset(0, 5),)
                            else
                              BoxShadow(color: Colors.grey.withValues(alpha: 0.05), blurRadius: 10, offset: Offset(0, 5),)
                          ]
                      ),

                      child: Row(
                        children: [
                          Image.asset('images/interest_selection/sleep.png', width: 40,),
                          SizedBox(width: 15,),
                          Text('Better sleeping habit', style: TextStyle(color: isSleep ? Colors.white : Colors.black87, fontWeight: FontWeight.bold, fontSize: 16),),
                          Spacer(),
                          Container(
                            width: 24, height: 24,
                            decoration: BoxDecoration(color: isSleep ? Colors.white : Colors.grey[200], borderRadius: BorderRadius.circular(8),),
                            child: isSleep ? Icon(Icons.check, size: 16, color: Color(0xFF3D4264),) : null,
                          ),
                        ],
                      ),
                    ),
                  ),

                  SizedBox(height: 15),
                  GestureDetector(
                    onTap: () { setState(() { isNutrition = !isNutrition; });},
                    child: Container(
                      height: 80,
                      padding: EdgeInsets.symmetric(horizontal: 20,),
                      decoration: BoxDecoration(
                          gradient: isNutrition ? LinearGradient(colors: [Color(0xFF6A62B7), Color(0xFF514A9D)]) : null,
                          color: isNutrition ? null : Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          border: isNutrition ? null : Border.all(color: Colors.grey.shade200),
                          boxShadow: [
                            if (isNutrition)
                              BoxShadow(color: Color(0xFF5B628F).withValues(alpha: 0.3), blurRadius: 10, offset: Offset(0, 5),)
                            else
                              BoxShadow(color: Colors.grey.withValues(alpha: 0.05), blurRadius: 10, offset: Offset(0, 5),)
                          ]
                      ),

                      child: Row(
                        children: [
                          Image.asset('images/interest_selection/vegan.png', width: 40,),
                          SizedBox(width: 15,),
                          Text('Track my nutrition', style: TextStyle(color: isNutrition ? Colors.white : Colors.black87, fontWeight: FontWeight.bold, fontSize: 16),),
                          Spacer(),
                          Container(
                            width: 24, height: 24,
                            decoration: BoxDecoration(color: isNutrition ? Colors.white : Colors.grey[200], borderRadius: BorderRadius.circular(8),),
                            child: isNutrition ? Icon(Icons.check, size: 16, color: Color(0xFF6A62B7),) : null,
                          ),
                        ],
                      ),
                    ),
                  ),

                  SizedBox(height: 15),
                  GestureDetector(
                    onTap: () { setState(() { isFitness = !isFitness; });},
                    child: Container(
                      height: 80,
                      padding: EdgeInsets.symmetric(horizontal: 20,),
                      decoration: BoxDecoration(
                          gradient: isFitness ? LinearGradient(colors: [Color(0xFF6FE1D8), Color(0xFF5BCAC2)]) : null,
                          color: isFitness ? null : Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          border: isFitness ? null : Border.all(color: Colors.grey.shade200),
                          boxShadow: [
                            if (isFitness)
                              BoxShadow(color: Color(0xFF5B628F).withValues(alpha: 0.3), blurRadius: 10, offset: Offset(0, 5),)
                            else
                              BoxShadow(color: Colors.grey.withValues(alpha: 0.05), blurRadius: 10, offset: Offset(0, 5),)
                          ]
                      ),

                      child: Row(
                        children: [
                          Image.asset('images/interest_selection/health.png', width: 40,),
                          SizedBox(width: 15,),
                          Text('Improve overall fitness', style: TextStyle(color: isFitness ? Colors.white : Colors.black87, fontWeight: FontWeight.bold, fontSize: 16),),
                          Spacer(),
                          Container(
                            width: 24, height: 24,
                            decoration: BoxDecoration(color: isFitness ? Colors.white : Colors.grey[200], borderRadius: BorderRadius.circular(8),),
                            child: isFitness ? Icon(Icons.check, size: 16, color: Color(0xFF6FE1D8),) : null,
                          ),
                        ],
                      ),
                    ),
                  ),

                  Spacer(),
                  SizedBox(
                    width: double.infinity,
                    height: 56,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => GenderScreen())
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