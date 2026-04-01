import 'package:flutter/material.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({super.key});

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F9FA), // Light background color
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black, size: 20),
          onPressed: () {
            // Navigator.pop(context); // Optional, depending on your nav stack
          },
        ),
        title: const Text(
          "Explore",
          style: TextStyle(
            color: Color(0xFF2D3142),
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: false,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // --- Search Bar ---
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withValues(alpha: 0.02),
                      blurRadius: 10,
                      offset: const Offset(0, 5),
                    ),
                  ],
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Search topic",
                    hintStyle: const TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                    ),
                    prefixIcon: const Icon(
                      Icons.search,
                      color: Colors.grey,
                      size: 20,
                    ),
                    border: InputBorder.none,
                    contentPadding: const EdgeInsets.symmetric(vertical: 15),
                  ),
                ),
              ),
              const SizedBox(height: 24),

              // --- Featured Horizontal List ---
              SizedBox(
                height: 240,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  clipBehavior: Clip.none,
                  children: [
                    _buildFeaturedCard(
                      imageUrl: 'images/explore_topics.png',
                      title: "20-minutes Outdoor Can Make You Less Stress",
                      author: "Jimmy Abrahamson",
                    ),
                    const SizedBox(width: 16),
                    _buildFeaturedCard(
                      imageUrl: 'images/explore_topics.png',
                      title: "Morning Routine for Better Productivity",
                      author: "Sarah Jenkins",
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),

              // --- Topics For You ---
              _buildSectionHeader("Topics For You"),
              const SizedBox(height: 16),
              SizedBox(
                height: 90,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    _buildTopicItem("🍉", "Nutrition"),
                    const SizedBox(width: 20),
                    _buildTopicItem("🌾", "Organic"),
                    const SizedBox(width: 20),
                    _buildTopicItem("🍃", "Meditation"),
                    const SizedBox(width: 20),
                    _buildTopicItem("🛏️", "Sleep"),
                  ],
                ),
              ),
              const SizedBox(height: 30),

              // --- Get Inspired (Vertical List) ---
              _buildSectionHeader("Get Inspired"),
              const SizedBox(height: 16),
              _buildInspiredItem(
                color: Colors.orange[100]!,
                icon: "🍊",
                title: "7 Nutrition Tips to Lose Weight Faster",
                category: "Nutrition",
              ),
              _buildInspiredItem(
                color: Colors.teal[100]!,
                icon: "⏰",
                title: "Proven Tips to Sleep Better at Night",
                category: "Nutrition",
              ),
              _buildInspiredItem(
                color: Colors.brown[100]!,
                icon: "👟",
                title: "10 Ways to Stay Motivated at Gym",
                category: "Nutrition",
              ),
              const SizedBox(height: 30),

              // --- Collection ---
              const Text(
                "Collection",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF2D3142),
                ),
              ),
              const SizedBox(height: 16),
              SizedBox(
                height: 200,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    _buildCollectionCard(
                      color: const Color(0xFFFF8A80),
                      tag: "HEALTH",
                      title: "How to Be a\nBetter Runner",
                      articlesCount: "8 articles",
                    ),
                    const SizedBox(width: 16),
                    _buildCollectionCard(
                      color: const Color(0xFF9F7DFF),
                      tag: "NUTRITION",
                      title: "Healthy\nSnacks Ideas",
                      articlesCount: "6 articles",
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 100,
              ), // Extra padding for the external bottom bar
            ],
          ),
        ),
      ),
    );
  }

  // Helper Widget: Section Header
  Widget _buildSectionHeader(String title) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Color(0xFF2D3142),
          ),
        ),
        const Icon(Icons.more_horiz, color: Colors.grey),
      ],
    );
  }

  // Helper Widget: Featured Card
  Widget _buildFeaturedCard({
    required String imageUrl,
    required String title,
    required String author,
  }) {
    return Container(
      width: 280,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
            child: Image.asset(
              imageUrl,
              height: 130,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    height: 1.3,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const CircleAvatar(
                          radius: 10,
                          backgroundImage: AssetImage('images/avatar.png'),
                        ),
                        const SizedBox(width: 8),
                        Text(
                          author,
                          style: const TextStyle(
                            fontSize: 12,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                    const Icon(Icons.favorite, color: Colors.grey, size: 16),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Helper Widget: Topic Item
  Widget _buildTopicItem(String emoji, String title) {
    return Column(
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(alpha: 0.03),
                blurRadius: 10,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: Center(
            child: Text(emoji, style: const TextStyle(fontSize: 24)),
          ),
        ),
        const SizedBox(height: 8),
        Text(
          title,
          style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
        ),
      ],
    );
  }

  // Helper Widget: Get Inspired Item
  Widget _buildInspiredItem({
    required Color color,
    required String icon,
    required String title,
    required String category,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Row(
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Center(
              child: Text(icon, style: const TextStyle(fontSize: 24)),
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  category,
                  style: const TextStyle(color: Colors.grey, fontSize: 12),
                ),
              ],
            ),
          ),
          const Icon(Icons.favorite, color: Colors.grey, size: 20),
        ],
      ),
    );
  }

  // Helper Widget: Collection Card
  Widget _buildCollectionCard({
    required Color color,
    required String tag,
    required String title,
    required String articlesCount,
  }) {
    return Container(
      width: 160,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(24),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            tag,
            style: const TextStyle(
              color: Colors.white70,
              fontSize: 10,
              fontWeight: FontWeight.bold,
              letterSpacing: 1.2,
            ),
          ),
          const SizedBox(height: 12),
          Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
              height: 1.3,
            ),
          ),
          const Spacer(),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Text(
              articlesCount,
              style: TextStyle(
                color: color,
                fontSize: 10,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
