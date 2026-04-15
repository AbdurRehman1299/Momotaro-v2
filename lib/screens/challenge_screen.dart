import 'package:flutter/material.dart';

class ChallengeScreen extends StatelessWidget {
  const ChallengeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF4F5F9),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildHeader(context),
              const SizedBox(height: 24),
              _buildMainChallengeCard(),
              const SizedBox(height: 32),
              _buildTrendingHeader(),
              const SizedBox(height: 16),
              _buildTrendingList(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        IconButton(
          padding: EdgeInsets.zero,
          alignment: Alignment.centerLeft,
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: Color(0xFF2D3142),
            size: 20,
          ),
          onPressed: () => Navigator.pop(context),
        ),

        const SizedBox(height: 8),

        const Text(
          "Challenge",
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: Color(0xFF2D3142),
          ),
        ),
      ],
    );
  }

  Widget _buildMainChallengeCard() {
    return Container(
      width: double.infinity,
      height: 280,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Color(0xFF8B7BFE), Color(0xFFB06AB3)],
        ),
        boxShadow: [
          BoxShadow(
            color: Color(0xFF7B61FF).withValues(alpha: 0.3),
            blurRadius: 15,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: Stack(
        children: [
          Positioned(
            right: -1,
            child: Image.asset(
              'images/challenge/cardio.png',
              fit: BoxFit.fitWidth,
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "FITNESS",
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 12,
                    fontWeight: FontWeight.w800,
                    letterSpacing: 1.2,
                  ),
                ),

                const SizedBox(height: 4),

                const Text(
                  "Cardio",
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),

                const SizedBox(height: 12),

                SizedBox(
                  width: 160,
                  child: Text(
                    "Get active on your off days and challenge your friends",
                    style: TextStyle(
                      color: Colors.white.withValues(alpha: 0.9),
                      fontSize: 13,
                      height: 1.4,
                    ),
                  ),
                ),

                const Spacer(),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 100,
                      height: 36,
                      child: Stack(
                        children: [
                          _buildAvatar(0, 'https://i.pravatar.cc/100?img=5'),
                          _buildAvatar(24, 'https://i.pravatar.cc/100?img=6'),
                          Positioned(
                            left: 48,
                            child: CircleAvatar(
                              radius: 18,
                              backgroundColor: const Color(0xFF6A5AE0),
                              child: const Text(
                                "+12",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 11,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    // Start Button
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Color(0xFF7B61FF),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 24,
                          vertical: 12,
                        ),
                        elevation: 0,
                      ),
                      child: const Text(
                        "Start",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTrendingHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        Text(
          "Trending",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Color(0xFF2D3142),
          ),
        ),
        Icon(Icons.more_horiz, color: Color(0xFF9FA2B4)),
      ],
    );
  }

  Widget _buildTrendingList() {
    return Column(
      children: [
        _buildTrendingCard(
          title: "Office Workout",
          subtitle: "Beginner • 7 mins",
          activeFlames: 1,
          bgColor: const Color(0xFFFFB4A2),
          imageUrl: 'images/challenge/office_workout.png',
        ),
        const SizedBox(height: 16),
        _buildTrendingCard(
          title: "Abs Intermediate",
          subtitle: "Advance • 7 mins",
          activeFlames: 2,
          bgColor: const Color(0xFFA2C3FF),
          imageUrl: 'images/challenge/abs_intermediate.png',
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
          border: Border.all(color: Colors.transparent, width: 2),
        ),
        child: CircleAvatar(
          radius: 18,
          backgroundImage: NetworkImage(imageUrl),
        ),
      ),
    );
  }

  Widget _buildTrendingCard({
    required String title,
    required String subtitle,
    required int activeFlames,
    required Color bgColor,
    required String imageUrl,
  }) {
    return Container(
      height: 120,
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
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.only(left: 20, top: 20, bottom: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: List.generate(3, (index) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 4.0),
                        child: Icon(
                          Icons.local_fire_department,
                          size: 16,
                          color: index < activeFlames
                              ? Color(0xFF7B61FF)
                              : Color(0xFFE8E5FF),
                        ),
                      );
                    }),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF2D3142),
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    subtitle,
                    style: const TextStyle(
                      fontSize: 12,
                      color: Color(0xFF9FA2B4),
                    ),
                  ),
                ],
              ),
            ),
          ),

          Expanded(
            flex: 2,
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(20),
                bottomRight: Radius.circular(20),
                topLeft: Radius.circular(60),
              ),
              child: Container(
                color: bgColor,
                child: Image.asset(imageUrl, fit: BoxFit.cover),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
