import 'package:flutter/material.dart';

class PodcastDetailScreen extends StatefulWidget {
  @override
  _PodcastDetailScreenState createState() => _PodcastDetailScreenState();
}

class _PodcastDetailScreenState extends State<PodcastDetailScreen> {
  bool isOfflineEnabled = true; // State for the switch

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 20, top: 10),
                child: IconButton(
                  icon: Icon(Icons.arrow_back_ios, size: 20, color: Colors.black),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),

              SizedBox(height: 10),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Wellness",
                      style: TextStyle(
                        color: Color(0xFF6A62B7),
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                        letterSpacing: 1.5,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      "Sleep With Me\nBedtime Stories",
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        height: 1.2,
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 20,
                          child: Image.asset('images/avatar.png', fit: BoxFit.cover,),
                        ),
                        SizedBox(width: 12),
                        Expanded(
                          child: Text(
                            "by Joseph Fink",
                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFFF0F0FA),
                            foregroundColor: Color(0xFF6A62B7),
                            elevation: 0,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                            padding: EdgeInsets.symmetric(horizontal: 24, vertical: 10),
                          ),
                          child: Text("Follow", style: TextStyle(fontWeight: FontWeight.bold)),
                        ),
                      ],
                    ),

                    SizedBox(height: 24),
                    Container(
                      height: 200,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Color(0xFF9FA8DA),
                        borderRadius: BorderRadius.circular(24),
                        image: DecorationImage(
                          image: AssetImage('images/sleep_well.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),

                    SizedBox(height: 20),
                    Text(
                      "Train your mind for a happier, healthier life by learning the fundamentals of mediation and mindfulness.",
                      style: TextStyle(color: Colors.grey, fontSize: 15, height: 1.5),
                    ),

                    SizedBox(height: 24),
                    Container(
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Colors.grey[50],
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Offline download", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
                              SizedBox(height: 4),
                              Text("100 mb", style: TextStyle(color: Colors.grey, fontSize: 12)),
                            ],
                          ),
                          Switch(
                            value: isOfflineEnabled,
                            onChanged: (val) => setState(() => isOfflineEnabled = val),
                            activeThumbColor: Color(0xFF6A62B7),
                          )
                        ],
                      ),
                    ),

                    SizedBox(height: 30),
                    Text(
                      "4 Sessions",
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 16),

                    // Item 1 (Play)
                    Padding(
                      padding: EdgeInsets.only(bottom: 20.0),
                      child: Row(
                        children: [
                          Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Color(0xFF6A62B7),
                              shape: BoxShape.circle,
                            ),
                            child: Icon(Icons.play_arrow, color: Colors.white, size: 28),
                          ),
                          SizedBox(width: 16),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Train Whistle At Night", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                                SizedBox(height: 4),
                                Text("15 mins • Free", style: TextStyle(color: Colors.grey, fontSize: 13)),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),

                    // Item 2 (Play)
                    Padding(
                      padding: EdgeInsets.only(bottom: 20.0),
                      child: Row(
                        children: [
                          Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Color(0xFF6A62B7),
                              shape: BoxShape.circle,
                            ),
                            child: Icon(Icons.play_arrow, color: Colors.white, size: 28),
                          ),
                          SizedBox(width: 16),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("The Twilight Zone", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                                SizedBox(height: 4),
                                Text("30 mins • Free", style: TextStyle(color: Colors.grey, fontSize: 13)),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),

                    // Item 3 (Locked)
                    Padding(
                      padding: EdgeInsets.only(bottom: 20.0),
                      child: Row(
                        children: [
                          Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Icon(Icons.lock, color: Colors.grey, size: 24),
                          ),
                          SizedBox(width: 16),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Train Whistle At Night", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.grey)),
                                SizedBox(height: 4),
                                Text("Locked", style: TextStyle(color: Colors.grey, fontSize: 13)),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),

                    // Item 4 (Locked)
                    Padding(
                      padding: EdgeInsets.only(bottom: 20.0),
                      child: Row(
                        children: [
                          Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Icon(Icons.lock, color: Colors.grey, size: 24),
                          ),
                          SizedBox(width: 16),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("The Twilight Zone", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.grey)),
                                SizedBox(height: 4),
                                Text("Locked", style: TextStyle(color: Colors.grey, fontSize: 13)),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),

                    SizedBox(height: 10),
                  ],
                ),
              ),

              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(vertical: 30),
                color: Color(0xFFF0F0FA), // Light purple banner
                child: Column(
                  children: [
                    Text(
                      "Rate & review",
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 8),
                    Text(
                      "Share your experience to help others",
                      style: TextStyle(color: Colors.grey),
                    ),
                    SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.star, size: 32, color: Color(0xFF8B80F8)),
                        Icon(Icons.star, size: 32, color: Color(0xFF8B80F8)),
                        Icon(Icons.star, size: 32, color: Color(0xFF8B80F8)),
                        Icon(Icons.star_border, size: 32, color: Color(0xFF8B80F8)),
                        Icon(Icons.star_border, size: 32, color: Color(0xFF8B80F8)),
                      ],
                    )
                  ],
                ),
              ),

              Padding(
                padding: EdgeInsets.all(24.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text("4.7", style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),
                        SizedBox(width: 8),
                        Icon(Icons.star, color: Color(0xFF6A62B7), size: 24),
                        SizedBox(width: 8),
                        Text("(28 Reviews)", style: TextStyle(color: Colors.grey, fontSize: 14)),
                      ],
                    ),
                    SizedBox(height: 24),

                    // User Review Item
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          radius: 20,
                          child: Image.asset('images/maria_smith.png', fit: BoxFit.cover,),
                        ),
                        SizedBox(width: 16),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Marie Smith", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                                  Container(
                                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                                    decoration: BoxDecoration(color: Color(0xFFF0F0FA), borderRadius: BorderRadius.circular(8)),
                                    child: Row(
                                      children: [
                                        Icon(Icons.star, size: 12, color: Color(0xFF6A62B7)),
                                        SizedBox(width: 4),
                                        Text("5.0", style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Color(0xFF6A62B7))),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              Text("1 mo ago", style: TextStyle(color: Colors.grey, fontSize: 12)),
                              SizedBox(height: 8),
                              Text(
                                "I try other meditation podcasts and always come back to this. Beautifully done.",
                                style: TextStyle(color: Colors.black87, height: 1.4),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 40),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}