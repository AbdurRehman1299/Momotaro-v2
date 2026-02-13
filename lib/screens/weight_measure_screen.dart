import 'package:assignment1/screens/success_screen.dart';
import 'package:flutter/material.dart';

class WeightScreen extends StatefulWidget {
  @override
  _WeightScreenState createState() => _WeightScreenState();
}

class _WeightScreenState extends State<WeightScreen> {
  bool isLbs = true;
  final TextEditingController _weightController = TextEditingController(text: "120");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              children: [
                SizedBox(height: 10),
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
                            widthFactor: 11 / 11,
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
                          MaterialPageRoute(builder: (context) => SuccessScreen()),
                        );
                      },
                      child: Text(
                        'Next',
                        style: TextStyle(
                            color: Color(0xFF6A62B7),
                            fontWeight: FontWeight.bold,
                            fontSize: 16
                        ),
                      ),
                    )
                  ],
                ),

                SizedBox(height: 30),
                Image.asset('images/weight.png'),

                SizedBox(height: 20),
                Text(
                  'STEP 11/11',
                  style: TextStyle(
                      color: Color(0xFF6A62B7),
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                      letterSpacing: 1.5
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'What is your weight?',
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87
                  ),
                ),

                SizedBox(height: 30),
                Container(
                  width: 200,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.grey[100],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: () => setState(() => isLbs = true),
                          child: Container(
                            margin: EdgeInsets.all(4),
                            decoration: BoxDecoration(
                              color: isLbs ? Color(0xFF6A62B7) : Colors.transparent,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            alignment: Alignment.center,
                            child: Text("lbs", style: TextStyle(color: isLbs ? Colors.white : Colors.grey, fontWeight: FontWeight.bold)),
                          ),
                        ),
                      ),
                      Expanded(
                        child: GestureDetector(
                          onTap: () => setState(() => isLbs = false),
                          child: Container(
                            margin: EdgeInsets.all(4),
                            decoration: BoxDecoration(
                              color: !isLbs ? Color(0xFF6A62B7) : Colors.transparent,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            alignment: Alignment.center,
                            child: Text("kg", style: TextStyle(color: !isLbs ? Colors.white : Colors.grey, fontWeight: FontWeight.bold)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    IntrinsicWidth(
                      child: TextField(
                        controller: _weightController,
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold, color: Colors.black87),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.zero,
                          isDense: true,
                        ),
                      ),
                    ),
                    SizedBox(width: 8),
                    Text(
                      isLbs ? "lbs" : "kg",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: Colors.grey),
                    ),
                  ],
                ),

                SizedBox(height: 10),
                SizedBox(
                  height: 80,
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      // Ruler Lines
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: List.generate(21, (index) {
                          final bool isBigLine = index % 5 == 0;
                          return Container(
                            width: 2,
                            height: isBigLine ? 30 : 15,
                            margin: EdgeInsets.symmetric(horizontal: 6),
                            color: isBigLine ? Color(0xFF6A62B7) : Colors.grey[300],
                          );
                        }),
                      ),
                      Positioned(
                        top: 35,
                        child: Icon(Icons.arrow_drop_up, size: 40, color: Color(0xFF6A62B7)),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 50),
                SizedBox(
                  width: double.infinity,
                  height: 56,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SuccessScreen()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF6A62B7),
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                      elevation: 0,
                    ),
                    child: Text("Continue", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  ),
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}