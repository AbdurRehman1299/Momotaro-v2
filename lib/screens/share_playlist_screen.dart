import 'package:flutter/material.dart';

class SharePlaylistScreen extends StatefulWidget {
  const SharePlaylistScreen({super.key});

  @override
  State<SharePlaylistScreen> createState() => _SharePlaylistScreenState();
}

class _SharePlaylistScreenState extends State<SharePlaylistScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F9FA),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),

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
                    Icon(Icons.download, size: 28, color: Color(0xFF8B7BFE)),
                  ],
                ),

                const SizedBox(height: 20),

                const Text(
                  "Let's share",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF2D3142),
                  ),
                ),

                const SizedBox(height: 30),

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
                      Stack(
                        children: [
                          Container(
                            height: 160,
                            decoration: const BoxDecoration(
                              color: Color(0xFF9F92FD),
                              borderRadius: BorderRadius.vertical(
                                top: Radius.circular(24),
                              ),
                            ),

                            child: Center(
                              child: Image.asset(
                                'images/share_illustration.png',
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

                          Positioned(
                            bottom: -1,
                            left: 0,
                            right: 0,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: List.generate(
                                20,
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

                      Padding(
                        padding: const EdgeInsets.all(24.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
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
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 10,
                                    vertical: 6,
                                  ),
                                  decoration: BoxDecoration(
                                    color: Color(
                                      0xFF8B7BFE,
                                    ).withValues(alpha: 0.15),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        size: 14,
                                        color: Color(0xFF8B7BFE),
                                      ),
                                      const SizedBox(width: 4),
                                      Text(
                                        "5.0",
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xFF8B7BFE),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),

                            const SizedBox(height: 24),

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

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _buildDot(false),
                    _buildDot(false),
                    _buildDot(false),
                    _buildDot(true),
                    _buildDot(false),
                  ],
                ),

                const SizedBox(height: 40),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _buildSocialButton(Icons.chat_bubble, Color(0xFF8B7BFE)),
                    const SizedBox(width: 16),
                    _buildSocialButton(
                      Icons.wechat_outlined,
                      Color(0xFF25D366),
                    ),
                    const SizedBox(width: 16),
                    _buildSocialButton(Icons.facebook, Color(0xFF1877F2)),
                    const SizedBox(width: 16),
                    _buildSocialButton(Icons.flutter_dash, Color(0xFF1DA1F2)),
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
