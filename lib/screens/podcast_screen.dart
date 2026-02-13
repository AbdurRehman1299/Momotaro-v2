import 'package:assignment1/screens/podcast_details_screen.dart';
import 'package:flutter/material.dart';

class PodcastScreen extends StatefulWidget {
  @override
  _PodcastScreenState createState() => _PodcastScreenState();
}

class _PodcastScreenState extends State<PodcastScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      extendBody: true, // Allow content to go behind Float Action Button Notch
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Color(0xFF6A62B7),
        elevation: 4,
        shape: CircleBorder(),
        child: Icon(Icons.add, color: Colors.white, size: 30),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        color: Colors.white,
        elevation: 20,
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(icon: Icon(Icons.home_filled, color: Colors.grey, size: 28), onPressed: () {}),
            IconButton(icon: Icon(Icons.mic, color: Colors.grey, size: 28), onPressed: () {}),
            SizedBox(width: 48),
            IconButton(icon: Icon(Icons.list_alt_rounded, color: Colors.grey, size: 28), onPressed: () {}),
            IconButton(icon: Icon(Icons.person, color: Colors.grey, size: 28), onPressed: () {}),
          ],
        ),
      ),

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 60),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.arrow_back_ios, size: 20),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Podcast",
                    style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                ],
              ),
            ),

            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Container(
                width: double.infinity,
                height: 320,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24),
                    gradient: LinearGradient(
                      colors: [Color(0xFF8B80F8), Color(0xFF6A62B7)],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    boxShadow: [
                      BoxShadow(color: Color(0xFF6A62B7).withValues(alpha: 0.4), blurRadius: 20, offset: Offset(0, 10))
                    ]
                ),
                child: Stack(
                  children: [
                    Positioned(top: -50, right: -50, child: CircleAvatar(radius: 100, backgroundColor: Colors.white.withValues(alpha: 0.1))),
                    Positioned(bottom: -30, left: -30, child: CircleAvatar(radius: 80, backgroundColor: Colors.white.withValues(alpha: 0.1))),

                    Padding(
                      padding: EdgeInsets.all(24.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("DAILY PICK", style: TextStyle(color: Color(0xFF64FFDA), fontWeight: FontWeight.bold, letterSpacing: 1.5, fontSize: 12)),
                          SizedBox(height: 15),
                          Text("Sleep With Me\nBedtime Stories", textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontSize: 26, fontWeight: FontWeight.bold, height: 1.2)),
                          SizedBox(height: 15),
                          Text("Train your mind for a happier,\nhealthier life", textAlign: TextAlign.center, style: TextStyle(color: Colors.white70, fontSize: 14)),
                          SizedBox(height: 30),
                          ElevatedButton.icon(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => PodcastDetailScreen()),
                              );
                            },
                            icon: Icon(Icons.play_arrow, size: 24),
                            label: Text("Let's Start"),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white.withValues(alpha: 0.2),
                              foregroundColor: Colors.white,
                              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                              elevation: 0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(height: 30),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Wellness", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  SizedBox(height: 20),

                  Wrap(
                    spacing: 15, // Horizontal gap
                    runSpacing: 20, // Vertical gap
                    children: [
                      // ITEM 1
                      SizedBox(
                        width: 155,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Stack(
                              children: [
                                Container(
                                  height: 110,
                                  decoration: BoxDecoration(color: Color(0xFFBBDEFB), borderRadius: BorderRadius.circular(16)),
                                  child: Center(child: Icon(Icons.self_improvement, size: 50, color: Colors.white)),
                                ),
                                Positioned(
                                  top: 10, left: 10,
                                  child: Container(
                                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                                    decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(8)),
                                    child: Text("New", style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold, color: Color(0xFF6A62B7))),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(height: 8),
                            Text("Living Beyond Fear", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
                            Text("15 minutes", style: TextStyle(color: Colors.grey, fontSize: 12)),
                          ],
                        ),
                      ),

                      // ITEM 2
                      SizedBox(
                        width: 155,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 110,
                              decoration: BoxDecoration(color: Color(0xFFB39DDB), borderRadius: BorderRadius.circular(16)),
                              child: Center(child: Icon(Icons.nights_stay, size: 50, color: Colors.white)),
                            ),
                            SizedBox(height: 8),
                            Text("The Twilight Zone", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
                            Text("15 minutes", style: TextStyle(color: Colors.grey, fontSize: 12)),
                          ],
                        ),
                      ),

                      // ITEM 3
                      SizedBox(
                        width: 155,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Stack(
                              children: [
                                Container(
                                  height: 110,
                                  decoration: BoxDecoration(color: Color(0xFFFFCCBC), borderRadius: BorderRadius.circular(16)),
                                  child: Center(child: Icon(Icons.psychology, size: 50, color: Colors.white)),
                                ),
                                Positioned(
                                  top: 10, left: 10,
                                  child: Container(
                                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                                    decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(8)),
                                    child: Text("New", style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold, color: Color(0xFF6A62B7))),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(height: 8),
                            Text("Retrain Your Brain", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
                            Text("15 minutes", style: TextStyle(color: Colors.grey, fontSize: 12)),
                          ],
                        ),
                      ),

                      // ITEM 4
                      SizedBox(
                        width: 155,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 110,
                              decoration: BoxDecoration(color: Color(0xFFC5CAE9), borderRadius: BorderRadius.circular(16)),
                              child: Center(child: Icon(Icons.music_note, size: 50, color: Colors.white)),
                            ),
                            SizedBox(height: 8),
                            Text("A Meditation Lullaby", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
                            Text("15 minutes", style: TextStyle(color: Colors.grey, fontSize: 12)),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            SizedBox(height: 40),
            Container(
              width: double.infinity,
              height: 220,
              decoration: BoxDecoration(
                color: Color(0xFF2196F3),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Stack(
                children: [
                  // Decorative Circles
                  Positioned(top: -20, left: 20, child: CircleAvatar(radius: 20, backgroundColor: Colors.white.withValues(alpha: 0.2))),
                  Positioned(top: -10, left: 80, child: CircleAvatar(radius: 15, backgroundColor: Colors.white.withValues(alpha: 0.2))),
                  Positioned(bottom: -50, right: -50, child: CircleAvatar(radius: 80, backgroundColor: Colors.white.withValues(alpha: 0.1))),

                  Padding(
                    padding: EdgeInsets.all(30.0),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 2,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("GO PREMIUM", style: TextStyle(color: Colors.white70, fontWeight: FontWeight.bold, fontSize: 12, letterSpacing: 1.5)),
                              SizedBox(height: 8),
                              Text("Time to unlock\nfull library", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold)),
                              SizedBox(height: 16),
                              ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  foregroundColor: Color(0xFF2196F3),
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                                ),
                                child: Text("Go Premium", style: TextStyle(fontWeight: FontWeight.bold)),
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Icon(Icons.rocket_launch, size: 80, color: Colors.white),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 80),
          ],
        ),
      ),
    );
  }
}