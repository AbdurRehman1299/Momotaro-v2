import 'package:assignment1/screens/enable_fingerprint_screen.dart';
import 'package:flutter/material.dart';

class PasswordScreen extends StatefulWidget {
  @override
  _PasswordScreenState createState() => _PasswordScreenState();
}

class _PasswordScreenState extends State<PasswordScreen> {
  bool _isObscure = true;
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 10),
                Row(
                  children: [
                    IconButton(
                      icon: Icon(Icons.arrow_back_ios, size: 20),
                      onPressed: () => Navigator.pop(context),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 40),
                        child: Container(
                          height: 6,
                          decoration: BoxDecoration(color: Colors.deepPurple[50], borderRadius: BorderRadius.circular(10)),
                          alignment: Alignment.centerLeft,
                          child: FractionallySizedBox(
                            widthFactor: 3 / 7,
                            child: Container(decoration: BoxDecoration(color: Color(0xFF6A62B7), borderRadius: BorderRadius.circular(10))),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 20),
                  ],
                ),

                SizedBox(height: 40),
                Text("STEP 3/7", style: TextStyle(color: Color(0xFF6A62B7), fontWeight: FontWeight.bold, fontSize: 14, letterSpacing: 1.5)),
                SizedBox(height: 15),
                Text("Set your password", textAlign: TextAlign.center, style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold, height: 1.2)),

                SizedBox(height: 40),
                Container(
                  height: 60,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: [
                        BoxShadow(color: Colors.grey.withOpacity(0.1), blurRadius: 15, offset: Offset(0, 5))
                      ],
                      border: Border.all(color: Colors.grey.shade100)
                  ),
                  child: Center(
                    child: TextField(
                      controller: _controller,
                      obscureText: _isObscure,
                      keyboardType: TextInputType.visiblePassword, // Uses System Keyboard
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: Colors.black87),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 15),
                        hintText: "Choose strong password only",
                        hintStyle: TextStyle(color: Colors.grey[400]),
                        suffixIcon: IconButton(
                          icon: Icon(
                            _isObscure ? Icons.visibility_off : Icons.visibility,
                            color: Colors.grey,
                          ),
                          onPressed: () {
                            setState(() {
                              _isObscure = !_isObscure;
                            });
                          },
                        ),
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 20),
                Row(
                  children: [
                    // Bar 1 (Filled)
                    Expanded(
                      child: Container(
                        height: 4,
                        margin: EdgeInsets.only(right: 5),
                        decoration: BoxDecoration(color: Color(0xFF6A62B7), borderRadius: BorderRadius.circular(2)),
                      ),
                    ),
                    // Bar 2 (Filled)
                    Expanded(
                      child: Container(
                        height: 4,
                        margin: EdgeInsets.only(right: 5),
                        decoration: BoxDecoration(color: Color(0xFF6A62B7), borderRadius: BorderRadius.circular(2)),
                      ),
                    ),
                    // Bar 3 (Filled)
                    Expanded(
                      child: Container(
                        height: 4,
                        margin: EdgeInsets.only(right: 5),
                        decoration: BoxDecoration(color: Color(0xFF6A62B7), borderRadius: BorderRadius.circular(2)),
                      ),
                    ),
                    // Bar 4 (Empty/Light)
                    Expanded(
                      child: Container(
                        height: 4,
                        margin: EdgeInsets.only(right: 5),
                        decoration: BoxDecoration(color: Color(0xFFE5E5F5), borderRadius: BorderRadius.circular(2)),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 20),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text("• 8+ characters", style: TextStyle(color: Color(0xFF555555), fontSize: 13, fontWeight: FontWeight.w500)),
                            ],
                          ),
                          SizedBox(height: 8),
                          Row(
                            children: [
                              Text("• 1 symbols", style: TextStyle(color: Color(0xFF555555), fontSize: 13, fontWeight: FontWeight.w500)),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text("• 1 uppercase", style: TextStyle(color: Color(0xFF555555), fontSize: 13, fontWeight: FontWeight.w500)),
                            ],
                          ),
                          SizedBox(height: 8),
                          Row(
                            children: [
                              Text("• 1 number", style: TextStyle(color: Color(0xFF555555), fontSize: 13, fontWeight: FontWeight.w500)),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 40),
                SizedBox(
                  width: double.infinity,
                  height: 56,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => FingerprintScreen()),
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