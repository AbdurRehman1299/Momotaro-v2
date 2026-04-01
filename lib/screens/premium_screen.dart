import 'package:flutter/material.dart';

class PremiumScreen extends StatefulWidget {
  const PremiumScreen({super.key});

  @override
  State<PremiumScreen> createState() => _PremiumScreenState();
}

class _PremiumScreenState extends State<PremiumScreen> {
  // State to track selected plan
  int selectedPlanIndex = 0;

  final Color premiumCardColor = Color(0xFF9F7DFF);
  final Color badgeColor = Color(0xFF99A9FF);

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Container(
      height: screenHeight * 0.90,
      decoration: const BoxDecoration(
        color: Colors.white, // White background for premium content
        borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
      ),
      child: ClipRRect(
        borderRadius: const BorderRadius.vertical(top: Radius.circular(30)),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // 1. Top Bar & Illustration Section
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20.0,
                  vertical: 15.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () => Navigator.pop(context),
                      child: const Icon(
                        Icons.arrow_back_ios,
                        size: 20,
                        color: Colors.black,
                      ),
                    ),
                    const Row(
                      children: [
                        Icon(
                          Icons.star,
                          size: 24,
                          color: Color(0xFFC0CAFB),
                        ), // Placeholder for stylized stars
                        SizedBox(width: 5),
                        Icon(
                          Icons.star,
                          size: 16,
                          color: Color(0xFFDADEEF),
                        ), // Placeholder
                      ],
                    ),
                  ],
                ),
              ),

              // Placeholder for premium illustration
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Image.asset(
                  'images/premium_illustration.png', // Add this asset
                  height: 180,
                  fit: BoxFit.contain,
                  errorBuilder: (context, error, stackTrace) => Container(
                    height: 180,
                    color: Colors.grey[100],
                  ), // Fallback
                ),
              ),

              // 2. Text Content
              const Text(
                "Go premium",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                "Get unlimited acces",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 12),
              const Text(
                "When you subscribe, you'll gain\ninstant unlimited access",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 14, color: Colors.grey, height: 1.5),
              ),

              // 3. Pagination Dots
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _buildDot(context, false),
                    _buildDot(context, false),
                    _buildDot(context, false),
                    _buildDot(context, true), // Active dot
                    _buildDot(context, false),
                  ],
                ),
              ),

              // 4. Subscription Cards
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Column(
                  children: [
                    // Premium Card with Badge
                    GestureDetector(
                      onTap: () => setState(() => selectedPlanIndex = 0),
                      child: Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Container(
                            width: double.infinity,
                            padding: const EdgeInsets.all(20.0),
                            decoration: BoxDecoration(
                              color: selectedPlanIndex == 0
                                  ? premiumCardColor
                                  : Colors.white,
                              borderRadius: BorderRadius.circular(16),
                              border: Border.all(
                                color: selectedPlanIndex == 0
                                    ? Colors.transparent
                                    : Colors.grey[200]!,
                                width: 1,
                              ),
                              boxShadow: selectedPlanIndex == 0
                                  ? [
                                      BoxShadow(
                                        color: premiumCardColor.withValues(
                                          alpha: 0.3,
                                        ),
                                        blurRadius: 10,
                                        offset: const Offset(0, 4),
                                      ),
                                    ]
                                  : [],
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "\$4.99",
                                  style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                    color: selectedPlanIndex == 0
                                        ? Colors.white
                                        : Colors.black,
                                  ),
                                ),
                                const SizedBox(height: 4),
                                Text(
                                  "\$4.99/month, billed yearly \$60",
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: selectedPlanIndex == 0
                                        ? Colors.white70
                                        : Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          // "SAVE 30%" Badge
                          Positioned(
                            top: -10,
                            right: -10,
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 12,
                                vertical: 6,
                              ),
                              decoration: BoxDecoration(
                                color: badgeColor,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: const Text(
                                "SAVE 30%",
                                style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 16),
                    // Monthly Card
                    GestureDetector(
                      onTap: () => setState(() => selectedPlanIndex = 1),
                      child: Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(20.0),
                        decoration: BoxDecoration(
                          color: selectedPlanIndex == 1
                              ? premiumCardColor
                              : Colors.grey[50],
                          borderRadius: BorderRadius.circular(16),
                          border: Border.all(
                            color: selectedPlanIndex == 1
                                ? Colors.transparent
                                : Colors.grey[100]!,
                            width: 1,
                          ),
                          boxShadow: selectedPlanIndex == 1
                              ? [
                                  BoxShadow(
                                    color: premiumCardColor.withValues(
                                      alpha: 0.3,
                                    ),
                                    blurRadius: 10,
                                    offset: const Offset(0, 4),
                                  ),
                                ]
                              : [],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "\$5.99",
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: selectedPlanIndex == 1
                                    ? Colors.white
                                    : Colors.black,
                              ),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              "Billed monthly \$5.99",
                              style: TextStyle(
                                fontSize: 12,
                                color: selectedPlanIndex == 1
                                    ? Colors.white70
                                    : Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              // "Go Premium" Button
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 24.0,
                  vertical: 30.0,
                ),
                child: SizedBox(
                  width: double.infinity,
                  height: 55,
                  child: ElevatedButton(
                    onPressed: () {}, // Subscriprion logic
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF7C6AFB),
                      foregroundColor: Colors.white,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.star,
                          size: 20,
                          color: Colors.white,
                        ), // Stylized star icon placeholder
                        SizedBox(width: 8),
                        Text(
                          "Go Premium",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              // Footer Text
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.0),
                child: Column(
                  children: [
                    Text(
                      "Subscription billed as one payment. Recurring billing. Cancel anytime for any reason",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 10,
                        color: Colors.grey,
                        height: 1.4,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      "Terms • Privacy Policy",
                      style: TextStyle(
                        fontSize: 10,
                        color: Colors.grey,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDot(BuildContext context, bool isActive) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 4),
      width: isActive ? 10 : 6,
      height: 6,
      decoration: BoxDecoration(
        color: isActive ? const Color(0xFF7C6AFB) : const Color(0xFFDADEEF),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
