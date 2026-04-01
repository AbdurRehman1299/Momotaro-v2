import 'package:flutter/material.dart';

class SharePlaylistScreen extends StatefulWidget {
  const SharePlaylistScreen({super.key});

  @override
  State<SharePlaylistScreen> createState() => _SharePlaylistScreenState();
}

class _SharePlaylistScreenState extends State<SharePlaylistScreen> {
  @override
  Widget build(BuildContext context) {
    // Define brand colors for the social buttons
    final Color messageColor = const Color(0xFF8B7BFE);
    final Color whatsappColor = const Color(0xFF25D366);
    final Color facebookColor = const Color(0xFF1877F2);
    final Color twitterColor = const Color(0xFF1DA1F2);
    final Color primaryPurple = const Color(0xFF8B7BFE);

    return Scaffold(
      backgroundColor: const Color(0xFFF8F9FA), // Light grey background
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),

                // --- 1. Top Bar ---
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () => Navigator.pop(context),
                      child: const Icon(
                        Icons.keyboard_arrow_down,
                        size: 32,
                        color: Colors.black87,
                      ),
                    ),
                    Icon(Icons.download, size: 28, color: primaryPurple),
                  ],
                ),

                const SizedBox(height: 20),

                // --- 2. Title ---
                const Text(
                  "Let's share",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF2D3142),
                  ),
                ),

                const SizedBox(height: 30),

                // The Main Card
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(24),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withValues(alpha: 0.05),
                        blurRadius: 20,
                        offset: const Offset(0, 10),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Top Section: Illustration & Scalloped Edge
                      Stack(
                        children: [
                          // Top Blue/Purple Illustration Area
                          Container(
                            height: 160,
                            decoration: const BoxDecoration(
                              color: Color(0xFF9F92FD),
                              borderRadius: BorderRadius.vertical(
                                top: Radius.circular(24),
                              ),
                            ),
                            // Placeholder for the illustration
                            child: Center(
                              child: Image.asset(
                                'images/share_illustration.png', // Add your asset here
                                fit: BoxFit.contain,
                                errorBuilder: (context, error, stackTrace) =>
                                    const Icon(
                                      Icons.image,
                                      size: 50,
                                      color: Colors.white54,
                                    ),
                              ),
                            ),
                          ),

                          // The Scalloped (Wavy) Edge Trick
                          Positioned(
                            bottom:
                                -1, // Align perfectly to the bottom of the blue container
                            left: 0,
                            right: 0,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: List.generate(
                                20, // Number of "bumps"
                                (index) => Container(
                                  width: 16,
                                  height: 16,
                                  decoration: const BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),

                      // Bottom Section: Playlist Info
                      Padding(
                        padding: const EdgeInsets.all(24.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // Title and Subtitle
                                const Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "WELLNESS",
                                        style: TextStyle(
                                          color: Color(0xFF8B7BFE),
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold,
                                          letterSpacing: 1.5,
                                        ),
                                      ),
                                      SizedBox(height: 8),
                                      Text(
                                        "Sleep With Me\nBedtime Stories",
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xFF2D3142),
                                          height: 1.3,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                // Rating Badge
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 10,
                                    vertical: 6,
                                  ),
                                  decoration: BoxDecoration(
                                    color: primaryPurple.withValues(
                                      alpha: 0.15,
                                    ),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        size: 14,
                                        color: primaryPurple,
                                      ),
                                      const SizedBox(width: 4),
                                      Text(
                                        "5.0",
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                          color: primaryPurple,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),

                            const SizedBox(height: 24),

                            // Playlist Items
                            _buildTrackItem(
                              "1",
                              "Mindfullness of Breath",
                              "10 mins",
                            ),
                            const SizedBox(height: 20),
                            _buildTrackItem(
                              "2",
                              "A Meditation Lullaby",
                              "5 mins",
                            ),
                            const SizedBox(height: 20),
                            _buildTrackItem(
                              "3",
                              "The Twilight Zone",
                              "10 mins",
                            ),
                            const SizedBox(height: 10),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 30),

                // --- 4. Pagination Dots ---
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _buildDot(false),
                    _buildDot(false),
                    _buildDot(false),
                    _buildDot(true), // Active dot
                    _buildDot(false),
                  ],
                ),

                const SizedBox(height: 40),

                // --- 5. Social Share Buttons ---
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _buildSocialButton(Icons.chat_bubble, messageColor),
                    const SizedBox(width: 16),
                    _buildSocialButton(
                      Icons.wechat_outlined,
                      whatsappColor,
                    ), // Approx for WhatsApp
                    const SizedBox(width: 16),
                    _buildSocialButton(Icons.facebook, facebookColor),
                    const SizedBox(width: 16),
                    _buildSocialButton(
                      Icons.flutter_dash,
                      twitterColor,
                    ), // Approx for Twitter/X
                  ],
                ),

                const SizedBox(height: 40),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Helper Widget for Playlist Tracks
  Widget _buildTrackItem(String number, String title, String duration) {
    return Row(
      children: [
        SizedBox(
          width: 24,
          child: Text(
            number,
            style: const TextStyle(
              fontSize: 14,
              color: Color(0xFF9DA3B4),
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        Expanded(
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 14,
              color: Color(0xFF2D3142),
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        Text(
          duration,
          style: const TextStyle(fontSize: 12, color: Color(0xFF9DA3B4)),
        ),
      ],
    );
  }

  // Helper Widget for Pagination Dots
  Widget _buildDot(bool isActive) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 4),
      width: isActive ? 8 : 6,
      height: isActive ? 8 : 6,
      decoration: BoxDecoration(
        color: isActive ? const Color(0xFF8B7BFE) : const Color(0xFFDADEEF),
        shape: BoxShape.circle,
      ),
    );
  }

  // Helper Widget for Social Share Buttons
  Widget _buildSocialButton(IconData icon, Color color) {
    return Container(
      width: 55,
      height: 55,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: color.withValues(alpha: 0.3),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Center(child: Icon(icon, color: Colors.white, size: 28)),
    );
  }
}
