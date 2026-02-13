import 'package:flutter/material.dart';

class PhoneNumberScreen extends StatefulWidget {
  @override
  _PhoneNumberScreenState createState() => _PhoneNumberScreenState();
}

class _PhoneNumberScreenState extends State<PhoneNumberScreen> {
  final TextEditingController _controller = TextEditingController();

  // Logic to add number
  void _onNumberPress(String value) {
    setState(() {
      _controller.text += value;
    });
  }

  // Logic to delete last number
  void _onBackspacePress() {
    if (_controller.text.isNotEmpty) {
      setState(() {
        _controller.text = _controller.text.substring(0, _controller.text.length - 1);
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
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Row(
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
                        decoration: BoxDecoration(color: Colors.deepPurple[50], borderRadius: BorderRadius.circular(10)),
                        alignment: Alignment.centerLeft,

                        child: FractionallySizedBox(
                          widthFactor: 1 / 7,
                          child: Container(decoration: BoxDecoration(color: Color(0xFF6A62B7), borderRadius: BorderRadius.circular(10))),
                        ),
                      ),
                    ),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text("Next", style: TextStyle(color: Color(0xFF6A62B7), fontWeight: FontWeight.bold, fontSize: 16))
                  )
                ],
              ),
            ),

            SizedBox(height: 40),
            Text("STEP 1/7", style: TextStyle(color: Color(0xFF6A62B7), fontWeight: FontWeight.bold, fontSize: 14, letterSpacing: 1.5)),
            SizedBox(height: 15),
            Text("Let’s start with your\nmobile number", textAlign: TextAlign.center, style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold, height: 1.2)),
            SizedBox(height: 10),
            Text("Number we can use to reach you", style: TextStyle(color: Colors.grey[500], fontSize: 14)),

            SizedBox(height: 40),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0),
              child: Container(
                height: 60,
                padding: EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(color: Colors.grey.withValues(alpha: 0.1), blurRadius: 15, offset: Offset(0, 5))
                    ],
                    border: Border.all(color: Colors.grey.shade100)
                ),
                child: Row(
                  children: [
                    // Flag
                    Container(
                      width: 24, height: 16,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(2),
                          gradient: LinearGradient(
                              begin: Alignment.topCenter, end: Alignment.bottomCenter,
                              stops: [0.5, 0.5],
                              colors: [Colors.red, Colors.white]
                          )
                      ),
                    ),
                    SizedBox(width: 8),
                    Text("+62", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.black87)),
                    Icon(Icons.arrow_drop_down, color: Colors.grey),

                    SizedBox(width: 15),

                    // The Actual Input Field
                    Expanded(
                      child: TextField(
                        controller: _controller,
                        readOnly: true,
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: Colors.black87),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Enter number",
                          hintStyle: TextStyle(color: Colors.grey),
                          contentPadding: EdgeInsets.zero,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(height: 30),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0),
              child: SizedBox(
                width: double.infinity,
                height: 56,
                child: ElevatedButton(
                  onPressed: () {
                    print("Verify: ${_controller.text}");
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF6A62B7),
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                    elevation: 0,
                  ),
                  child: Text("Verify Now", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                ),
              ),
            ),

            Spacer(),
            Container(
              color: Color(0xFFF9F9F9),
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Column(
                children: [
                  // --- ROW 1 (1, 2, 3) ---
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      // BUTTON 1
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
                      // BUTTON 2
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
                      // BUTTON 3
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

                  // --- ROW 2 (4, 5, 6) ---
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      // BUTTON 4
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
                      // BUTTON 5
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
                      // BUTTON 6
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

                  // --- ROW 3 (7, 8, 9) ---
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      // BUTTON 7
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
                      // BUTTON 8
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
                      // BUTTON 9
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

                  // --- ROW 4 (0, Backspace) ---
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(width: 110), // Empty Space

                      // BUTTON 0
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

                      // BUTTON BACKSPACE
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