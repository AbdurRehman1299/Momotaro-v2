import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  static const Color bgColor = Color(0xFFF8F9FA);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF8F9FA),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(bottom: 100.0),
        child: Stack(
          children: [
            Container(
              height: 220,
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    'https://images.unsplash.com/photo-1550684848-fac1c5b4e853?ixlib=rb-4.0.3&auto=format&fit=crop&w=800&q=80',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),

            Container(
              margin: const EdgeInsets.only(top: 180),
              decoration: const BoxDecoration(
                color: Color(0xFFF8F9FA),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 50),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Grace Saraswati",
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF2D3142),
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              "BASIC MEMBER",
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w800,
                                color: Color(0xFF8B7BFE),
                                letterSpacing: 1.2,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 8,
                          ),
                          decoration: BoxDecoration(
                            color: Color(0xFFE8E5FF),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: const Text(
                            "Edit",
                            style: TextStyle(
                              color: Color(0xFF8B7BFE),
                              fontWeight: FontWeight.bold,
                              fontSize: 13,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 20),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24.0),
                    child: const Text(
                      "I decided I was going to actively pursue a better life, and take better care of my mind, body and soul",
                      style: TextStyle(
                        color: Color(0xFF9FA2B4),
                        height: 1.5,
                        fontSize: 13,
                      ),
                    ),
                  ),

                  const SizedBox(height: 24),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _buildStatColumn("WEIGHT", "55", "kg"),
                        _buildDivider(),
                        _buildStatColumn("AGE", "26", "yo"),
                        _buildDivider(),
                        _buildStatColumn("HEIGHT", "160", "cm"),
                        const SizedBox(width: 20),
                      ],
                    ),
                  ),

                  const SizedBox(height: 24),

                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    padding: const EdgeInsets.symmetric(horizontal: 24.0),
                    child: Row(
                      children: [
                        _buildMetricCard(
                          title: "STEPS",
                          value: "9,890",
                          subtitle: "last update 3m",
                          bgColor: Color(0xFF8B7BFE),
                          iconWidget: const Icon(
                            Icons.pie_chart,
                            color: Colors.cyanAccent,
                            size: 50,
                          ),
                        ),

                        const SizedBox(width: 16),

                        _buildMetricCard(
                          title: "HEART RATE",
                          value: "105",
                          valueSuffix: " bpm",
                          subtitle: "last update 3d",
                          bgColor: Color(0xFFFF8E7C),
                          iconWidget: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              _buildWaveBar(20),
                              _buildWaveBar(35),
                              _buildWaveBar(20),
                              _buildWaveBar(45),
                              _buildWaveBar(25),
                              _buildWaveBar(35),
                              _buildWaveBar(15),
                            ],
                          ),
                        ),

                        const SizedBox(width: 16),

                        Container(
                          width: 100,
                          height: 180,
                          decoration: BoxDecoration(
                            color: const Color(0xFF4A5568),
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 32),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "My badges",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF2D3142),
                          ),
                        ),
                        Icon(Icons.more_horiz, color: Color(0xFF9FA2B4)),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 24.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withValues(alpha: 0.03),
                          blurRadius: 10,
                          offset: const Offset(0, 5),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        _buildBadgeItem(
                          "Nutrition Expert",
                          "Hit all daily Goals",
                          Icons.local_dining,
                          const Color(0xFF4DD0E1),
                        ),
                        _buildBadgeItem(
                          "Yoga Master",
                          "Complete 3 meditations",
                          Icons.eco,
                          Color(0xFF8B7BFE),
                        ),
                        _buildBadgeItem(
                          "Moon Walker",
                          "Walk 20,000 a day",
                          Icons.directions_run,
                          const Color(0xFF90CAF9),
                          isLast: true,
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 32),

                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 24.0),
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Color(0xFF1E88E5), width: 2),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "GO PREMIUM",
                          style: TextStyle(
                            color: Color(0xFF8B7BFE),
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1.2,
                          ),
                        ),

                        const SizedBox(height: 8),

                        const Text(
                          "Unlock all features to improve your health",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF2D3142),
                            height: 1.2,
                          ),
                        ),

                        const SizedBox(height: 8),

                        const Text(
                          "Be a part of our healthy group",
                          style: TextStyle(
                            color: Color(0xFF9FA2B4),
                            fontSize: 13,
                          ),
                        ),

                        const SizedBox(height: 16),

                        SizedBox(
                          height: 40,
                          child: Stack(
                            children: [
                              _buildAvatar(
                                0,
                                'https://i.pravatar.cc/100?img=1',
                              ),
                              _buildAvatar(
                                28,
                                'https://i.pravatar.cc/100?img=2',
                              ),
                              _buildAvatar(
                                56,
                                'https://i.pravatar.cc/100?img=3',
                              ),
                              _buildAvatar(
                                84,
                                'https://i.pravatar.cc/100?img=4',
                              ),
                            ],
                          ),
                        ),

                        const SizedBox(height: 24),

                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFF8B7BFE),
                            minimumSize: const Size(double.infinity, 50),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            elevation: 0,
                          ),
                          child: const Text(
                            "Unlock now",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 40),
                ],
              ),
            ),

            Positioned(
              top: 140,
              left: 24,
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Color(0xFFF8F9FA), width: 4),
                ),
                child: const CircleAvatar(
                  radius: 35,
                  backgroundImage: NetworkImage(
                    'https://i.pravatar.cc/150?img=5',
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStatColumn(String title, String value, String unit) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            color: Color(0xFF8B7BFE),
            fontSize: 10,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.0,
          ),
        ),
        const SizedBox(height: 4),
        Row(
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.alphabetic,
          children: [
            Text(
              value,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0xFF2D3142),
              ),
            ),
            const SizedBox(width: 2),
            Text(
              unit,
              style: const TextStyle(
                fontSize: 12,
                color: Color(0xFF2D3142),
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildDivider() {
    return Container(
      height: 30,
      width: 1,
      color: Colors.grey.withValues(alpha: 0.3),
    );
  }

  Widget _buildMetricCard({
    required String title,
    required String value,
    String valueSuffix = "",
    required String subtitle,
    required Color bgColor,
    required Widget iconWidget,
  }) {
    return Container(
      width: 150,
      height: 180,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              color: Colors.white70,
              fontSize: 11,
              fontWeight: FontWeight.bold,
              letterSpacing: 1.0,
            ),
          ),
          const Spacer(),
          Center(child: iconWidget),
          const Spacer(),
          Row(
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: [
              Text(
                value,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              if (valueSuffix.isNotEmpty)
                Text(
                  valueSuffix,
                  style: const TextStyle(color: Colors.white70, fontSize: 12),
                ),
            ],
          ),
          const SizedBox(height: 4),
          Text(
            subtitle,
            style: const TextStyle(color: Colors.white70, fontSize: 11),
          ),
        ],
      ),
    );
  }

  Widget _buildWaveBar(double height) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 2),
      width: 4,
      height: height,
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.6),
        borderRadius: BorderRadius.circular(2),
      ),
    );
  }

  Widget _buildBadgeItem(
    String title,
    String subtitle,
    IconData icon,
    Color iconBgColor, {
    bool isLast = false,
  }) {
    return Column(
      children: [
        ListTile(
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 8,
          ),
          leading: Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: iconBgColor.withValues(alpha: 0.2),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(icon, color: iconBgColor, size: 24),
          ),
          title: Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
              color: Color(0xFF2D3142),
            ),
          ),
          subtitle: Text(
            subtitle,
            style: const TextStyle(fontSize: 12, color: Color(0xFF9FA2B4)),
          ),
        ),
        if (!isLast)
          Divider(
            height: 1,
            indent: 80,
            endIndent: 20,
            color: Colors.grey.withValues(alpha: 0.1),
          ),
      ],
    );
  }

  Widget _buildAvatar(double leftPosition, String imageUrl) {
    return Positioned(
      left: leftPosition,
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: Colors.white, width: 2),
        ),
        child: CircleAvatar(
          radius: 18,
          backgroundImage: NetworkImage(imageUrl),
        ),
      ),
    );
  }
}
