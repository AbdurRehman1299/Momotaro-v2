import 'package:flutter/material.dart';

class EventDetailsScreen extends StatelessWidget {
  const EventDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
        decoration: BoxDecoration(
          color: const Color(0xFFF8F9FA),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.05),
              blurRadius: 10,
              offset: const Offset(0, -5),
            ),
          ],
        ),
        child: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "US\$29",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF2D3142),
                    ),
                  ),
                  SizedBox(height: 2),
                  Text(
                    "ticket per person",
                    style: TextStyle(fontSize: 12, color: Color(0xFF9FA2B4)),
                  ),
                ],
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF7B61FF),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 32,
                    vertical: 14,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  elevation: 0,
                ),
                child: const Text(
                  "Purchase",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: 280,
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/events/badminton.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.only(top: 8.0, left: 16.0),
                child: CircleAvatar(
                  backgroundColor: Colors.white.withValues(alpha: 0.3),
                  child: IconButton(
                    icon: const Icon(
                      Icons.arrow_back_ios_new,
                      color: Colors.black,
                      size: 20,
                    ),
                    onPressed: () => Navigator.pop(context),
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 250),
              padding: const EdgeInsets.all(24.0),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "EVENTS",
                    style: TextStyle(
                      color: Color(0xFF7B61FF),
                      fontSize: 12,
                      fontWeight: FontWeight.w800,
                      letterSpacing: 1.2,
                    ),
                  ),

                  const SizedBox(height: 8),

                  const Text(
                    "National Health\nMovement",
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF2D3142),
                      height: 1.2,
                    ),
                  ),

                  const SizedBox(height: 16),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "by The Commonwealth Club",
                        style: TextStyle(
                          color: Color(0xFF2D3142),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 8,
                        ),
                        decoration: BoxDecoration(
                          color: Color(0xFFE8E5FF),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const Text(
                          "Follow",
                          style: TextStyle(
                            color: Color(0xFF7B61FF),
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 32),

                  const Text(
                    "24 people are going",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF2D3142),
                    ),
                  ),

                  const SizedBox(height: 12),

                  SizedBox(
                    height: 40,
                    child: Stack(
                      children: [
                        _buildAvatar(0, 'https://i.pravatar.cc/100?img=1'),
                        _buildAvatar(28, 'https://i.pravatar.cc/100?img=2'),
                        _buildAvatar(56, 'https://i.pravatar.cc/100?img=3'),
                        _buildAvatar(84, 'https://i.pravatar.cc/100?img=4'),
                        Positioned(
                          left: 112,
                          child: CircleAvatar(
                            radius: 20,
                            backgroundColor: Color(0xFF7B61FF),
                            child: const Text(
                              "+12",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 32),

                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Icon(
                        Icons.calendar_today_outlined,
                        color: Color(0xFF2D3142),
                        size: 24,
                      ),
                      const SizedBox(width: 16),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Thursday, 6 Feb 2020",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF2D3142),
                              fontSize: 15,
                            ),
                          ),

                          SizedBox(height: 4),

                          Text(
                            "6:30 PM - 7:30 PM",
                            style: TextStyle(
                              color: Color(0xFF9FA2B4),
                              fontSize: 13,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            "Add to calendar",
                            style: TextStyle(
                              color: Color(0xFF7B61FF),
                              fontWeight: FontWeight.w600,
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),

                  const SizedBox(height: 24),

                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Icon(
                        Icons.location_on_outlined,
                        color: Color(0xFF2D3142),
                        size: 24,
                      ),

                      const SizedBox(width: 16),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Commonwealth Club",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF2D3142),
                              fontSize: 15,
                            ),
                          ),

                          SizedBox(height: 4),

                          Text(
                            "110 The Embarcadero, San Fransisco",
                            style: TextStyle(
                              color: Color(0xFF9FA2B4),
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),

                  const SizedBox(height: 32),

                  const Text(
                    "About",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF2D3142),
                    ),
                  ),

                  const SizedBox(height: 12),

                  const Text(
                    "Get active on your off days and challenge your friends by taking the most steps on Saturday and Sunday! Let's go!",
                    style: TextStyle(color: Color(0xFF9FA2B4), height: 1.5),
                  ),

                  const SizedBox(height: 8),

                  const Text(
                    "Read more",
                    style: TextStyle(
                      color: Color(0xFF7B61FF),
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 32),

                  const Text(
                    "Location",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF2D3142),
                    ),
                  ),

                  const SizedBox(height: 16),

                  Container(
                    height: 180,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      image: const DecorationImage(
                        image: AssetImage('images/events/map_bg.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Center(
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        decoration: const BoxDecoration(
                          color: Colors.blue,
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          Icons.directions_walk,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 16),

                  Center(
                    child: Column(
                      children: [
                        const Text(
                          "Commonwealth Club",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF2D3142),
                          ),
                        ),

                        const SizedBox(height: 4),

                        const Text(
                          "110 The Embarcadero, San Fransisco",
                          style: TextStyle(
                            color: Color(0xFF9FA2B4),
                            fontSize: 12,
                          ),
                        ),

                        const SizedBox(height: 20),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            _buildTransportIcon(Icons.directions_car),
                            const SizedBox(width: 16),
                            _buildTransportIcon(Icons.directions_bus),
                            const SizedBox(width: 16),
                            _buildTransportIcon(Icons.directions_walk),
                          ],
                        ),
                        const SizedBox(height: 20),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
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

  Widget _buildTransportIcon(IconData icon) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: const BoxDecoration(
        color: Color(0xFFE8E5FF),
        shape: BoxShape.circle,
      ),
      child: Icon(icon, color: Color(0xFF7B61FF), size: 20),
    );
  }
}
