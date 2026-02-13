import 'package:assignment1/screens/set_password_screen.dart';
import 'package:flutter/material.dart';

class VerificationScreen extends StatefulWidget {
  @override
  _VerificationScreenState createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  String otpCode = "";

  // Logic to update state
  void _onNumberPress(String value) {
    if (otpCode.length < 4) {
      setState(() {
        otpCode += value;
      });
    }
  }

  void _onBackspacePress() {
    if (otpCode.isNotEmpty) {
      setState(() {
        otpCode = otpCode.substring(0, otpCode.length - 1);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0),
              child: Row(
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
                          widthFactor: 2 / 11,
                          child: Container(decoration: BoxDecoration(color: Color(0xFF6A62B7), borderRadius: BorderRadius.circular(10))),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                ],
              ),
            ),

            SizedBox(height: 40),
            Text("STEP 2/11", style: TextStyle(color: Color(0xFF6A62B7), fontWeight: FontWeight.bold, fontSize: 14, letterSpacing: 1.5)),
            SizedBox(height: 15),
            Text("Verify your number", textAlign: TextAlign.center, style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold, height: 1.2)),
            SizedBox(height: 10),
            Text("We'll text you on 08223780727.", style: TextStyle(color: Colors.grey[600], fontSize: 14)),

            SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Circle 1
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  width: 30, height: 40,
                  alignment: Alignment.center,
                  child: otpCode.isNotEmpty
                      ? Text(otpCode[0], style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.black87))
                      : Container(width: 16, height: 16, decoration: BoxDecoration(color: Colors.deepPurple[50], shape: BoxShape.circle)),
                ),
                // Circle 2
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  width: 30, height: 40,
                  alignment: Alignment.center,
                  child: otpCode.length > 1
                      ? Text(otpCode[1], style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.black87))
                      : Container(width: 16, height: 16, decoration: BoxDecoration(color: Colors.deepPurple[50], shape: BoxShape.circle)),
                ),
                // Circle 3
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  width: 30, height: 40,
                  alignment: Alignment.center,
                  child: otpCode.length > 2
                      ? Text(otpCode[2], style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.black87))
                      : Container(width: 16, height: 16, decoration: BoxDecoration(color: Colors.deepPurple[50], shape: BoxShape.circle)),
                ),
                // Circle 4
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  width: 30, height: 40,
                  alignment: Alignment.center,
                  child: otpCode.length > 3
                      ? Text(otpCode[3], style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.black87))
                      : Container(width: 16, height: 16, decoration: BoxDecoration(color: Colors.deepPurple[50], shape: BoxShape.circle)),
                ),
              ],
            ),

            SizedBox(height: 40),
            GestureDetector(
              onTap: () {},
              child: Text("Send me a new code", style: TextStyle(color: Color(0xFF6A62B7), fontWeight: FontWeight.w600, fontSize: 14)),
            ),

            SizedBox(height: 30),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0),
              child: SizedBox(
                width: double.infinity,
                height: 56,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PasswordScreen()),
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
            ),

            Spacer(),
            Container(
              color: Color(0xFFF9F9F9),
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Column(
                children: [
                  // --- ROW 1 ---
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      // Key 1
                      Container(
                        width: 110, height: 50,
                        decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(8), boxShadow: [BoxShadow(color: Colors.grey.withValues(alpha: 0.05), blurRadius: 1, offset: Offset(0, 1))]),
                        child: Material(
                          color: Colors.transparent,
                          child: InkWell(
                            onTap: () => _onNumberPress("1"),
                            borderRadius: BorderRadius.circular(8),
                            child: Center(child: Text("1", style: TextStyle(fontSize: 24, fontWeight: FontWeight.w400))),
                          ),
                        ),
                      ),
                      // Key 2
                      Container(
                        width: 110, height: 50,
                        decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(8), boxShadow: [BoxShadow(color: Colors.grey.withValues(alpha: 0.05), blurRadius: 1, offset: Offset(0, 1))]),
                        child: Material(
                          color: Colors.transparent,
                          child: InkWell(
                            onTap: () => _onNumberPress("2"),
                            borderRadius: BorderRadius.circular(8),
                            child: Center(child: Text("2", style: TextStyle(fontSize: 24, fontWeight: FontWeight.w400))),
                          ),
                        ),
                      ),
                      // Key 3
                      Container(
                        width: 110, height: 50,
                        decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(8), boxShadow: [BoxShadow(color: Colors.grey.withValues(alpha: 0.05), blurRadius: 1, offset: Offset(0, 1))]),
                        child: Material(
                          color: Colors.transparent,
                          child: InkWell(
                            onTap: () => _onNumberPress("3"),
                            borderRadius: BorderRadius.circular(8),
                            child: Center(child: Text("3", style: TextStyle(fontSize: 24, fontWeight: FontWeight.w400))),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),

                  // --- ROW 2 ---
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      // Key 4
                      Container(
                        width: 110, height: 50,
                        decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(8), boxShadow: [BoxShadow(color: Colors.grey.withValues(alpha: 0.05), blurRadius: 1, offset: Offset(0, 1))]),
                        child: Material(
                          color: Colors.transparent,
                          child: InkWell(
                            onTap: () => _onNumberPress("4"),
                            borderRadius: BorderRadius.circular(8),
                            child: Center(child: Text("4", style: TextStyle(fontSize: 24, fontWeight: FontWeight.w400))),
                          ),
                        ),
                      ),
                      // Key 5
                      Container(
                        width: 110, height: 50,
                        decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(8), boxShadow: [BoxShadow(color: Colors.grey.withValues(alpha: 0.05), blurRadius: 1, offset: Offset(0, 1))]),
                        child: Material(
                          color: Colors.transparent,
                          child: InkWell(
                            onTap: () => _onNumberPress("5"),
                            borderRadius: BorderRadius.circular(8),
                            child: Center(child: Text("5", style: TextStyle(fontSize: 24, fontWeight: FontWeight.w400))),
                          ),
                        ),
                      ),
                      // Key 6
                      Container(
                        width: 110, height: 50,
                        decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(8), boxShadow: [BoxShadow(color: Colors.grey.withValues(alpha: 0.05), blurRadius: 1, offset: Offset(0, 1))]),
                        child: Material(
                          color: Colors.transparent,
                          child: InkWell(
                            onTap: () => _onNumberPress("6"),
                            borderRadius: BorderRadius.circular(8),
                            child: Center(child: Text("6", style: TextStyle(fontSize: 24, fontWeight: FontWeight.w400))),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),

                  // --- ROW 3 ---
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      // Key 7
                      Container(
                        width: 110, height: 50,
                        decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(8), boxShadow: [BoxShadow(color: Colors.grey.withValues(alpha: 0.05), blurRadius: 1, offset: Offset(0, 1))]),
                        child: Material(
                          color: Colors.transparent,
                          child: InkWell(
                            onTap: () => _onNumberPress("7"),
                            borderRadius: BorderRadius.circular(8),
                            child: Center(child: Text("7", style: TextStyle(fontSize: 24, fontWeight: FontWeight.w400))),
                          ),
                        ),
                      ),
                      // Key 8
                      Container(
                        width: 110, height: 50,
                        decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(8), boxShadow: [BoxShadow(color: Colors.grey.withValues(alpha: 0.05), blurRadius: 1, offset: Offset(0, 1))]),
                        child: Material(
                          color: Colors.transparent,
                          child: InkWell(
                            onTap: () => _onNumberPress("8"),
                            borderRadius: BorderRadius.circular(8),
                            child: Center(child: Text("8", style: TextStyle(fontSize: 24, fontWeight: FontWeight.w400))),
                          ),
                        ),
                      ),
                      // Key 9
                      Container(
                        width: 110, height: 50,
                        decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(8), boxShadow: [BoxShadow(color: Colors.grey.withValues(alpha: 0.05), blurRadius: 1, offset: Offset(0, 1))]),
                        child: Material(
                          color: Colors.transparent,
                          child: InkWell(
                            onTap: () => _onNumberPress("9"),
                            borderRadius: BorderRadius.circular(8),
                            child: Center(child: Text("9", style: TextStyle(fontSize: 24, fontWeight: FontWeight.w400))),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),

                  // --- ROW 4 ---
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(width: 110),
                      // Key 0
                      Container(
                        width: 110, height: 50,
                        decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(8), boxShadow: [BoxShadow(color: Colors.grey.withValues(alpha: 0.05), blurRadius: 1, offset: Offset(0, 1))]),
                        child: Material(
                          color: Colors.transparent,
                          child: InkWell(
                            onTap: () => _onNumberPress("0"),
                            borderRadius: BorderRadius.circular(8),
                            child: Center(child: Text("0", style: TextStyle(fontSize: 24, fontWeight: FontWeight.w400))),
                          ),
                        ),
                      ),
                      // Backspace
                      Container(
                        width: 110, height: 50,
                        alignment: Alignment.center,
                        child: InkWell(
                          onTap: _onBackspacePress,
                          borderRadius: BorderRadius.circular(8),
                          child: Center(child: Icon(Icons.backspace_outlined, color: Colors.black54, size: 24)),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}