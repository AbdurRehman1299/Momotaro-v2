import 'package:flutter/material.dart';

class FitnessLevelScreen extends StatefulWidget {
  @override
  State<FitnessLevelScreen> createState() => _FitnessLevelScreenState();
}

class _FitnessLevelScreenState extends State<FitnessLevelScreen> {
  final Color brandColor = const Color(0xFF6A62B7);
  final Color lightPurpleBg = const Color(0xFFEBEAFA);

  final PageController _pageController = PageController(viewportFraction: 0.85);
  int _currentIndex = 0;

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
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Container(
                        height: 6,
                        decoration: BoxDecoration(color: Colors.deepPurple[50], borderRadius: BorderRadius.circular(10)),
                        alignment: Alignment.centerLeft,
                        child: FractionallySizedBox(
                          widthFactor: 5 / 7,
                          child: Container(decoration: BoxDecoration(color: brandColor, borderRadius: BorderRadius.circular(10))),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 40),
                ],
              ),
            ),

            SizedBox(height: 20),
            Text("STEP 5/7", style: TextStyle(color: brandColor, fontWeight: FontWeight.bold, fontSize: 14, letterSpacing: 1.5)),

            SizedBox(height: 10),
            Text("What’s your current\nfitness level?", textAlign: TextAlign.center, style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold, height: 1.2)),

            SizedBox(height: 30),
            Expanded(
              child: PageView.builder(
                controller: _pageController,
                itemCount: 3,
                onPageChanged: (index) {
                  setState(() {
                    _currentIndex = index;
                  });
                },
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: lightPurpleBg,
                        borderRadius: BorderRadius.circular(24),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 30),
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                              decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(12)),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Icon(Icons.local_fire_department, size: 20, color: brandColor),
                                  SizedBox(width: 4),
                                  Icon(Icons.local_fire_department, size: 20, color: brandColor),
                                  SizedBox(width: 4),
                                  Icon(Icons.local_fire_department, size: 20, color: Colors.grey[300]),
                                ],
                              ),
                            ),
                          ),

                          Spacer(),
                          Image.asset('images/fitness_level.png'),
                          Spacer(),

                          Text(
                            "Moderate Intensity",
                            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.black87),
                          ),
                          SizedBox(height: 12),
                          Text(
                            "I always work out regularly two or three times a week.",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 15, height: 1.4, color: Colors.grey[600]),
                          ),
                          Spacer(),

                          SizedBox(
                            width: double.infinity,
                            height: 56,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: brandColor,
                                foregroundColor: Colors.white,
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                                elevation: 0,
                              ),
                              child: Text("Select", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),

            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(3, (index) {
                return Container(
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  height: 10,
                  width: 10,
                  decoration: BoxDecoration(
                    color: _currentIndex == index ? brandColor : Colors.deepPurple[100],
                    shape: BoxShape.circle,
                  ),
                );
              }),
            ),
            SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}