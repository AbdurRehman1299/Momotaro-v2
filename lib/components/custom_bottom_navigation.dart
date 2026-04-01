import 'package:assignment1/screens/events_screen.dart';
import 'package:assignment1/screens/explore_screen.dart';
import 'package:assignment1/screens/podcast_screen.dart';
import 'package:flutter/material.dart';

class CustomBottomNavigation extends StatefulWidget {
  const CustomBottomNavigation({super.key});

  @override
  State<CustomBottomNavigation> createState() => _CustomBottomNavigationState();
}

class _CustomBottomNavigationState extends State<CustomBottomNavigation> {
  final Color activeColor = Color(0xFF6A62B7);
  final Color inactiveColor = Colors.grey;

  int _currentIndex = 0;

  final List<Widget> _pages = [
    PodcastScreen(),
    EventsScreen(),
    ExploreScreen(),
  ];

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _pages[_currentIndex],
      extendBody: true,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your action for the '+' button here
          print("FAB Clicked!");
        },
        backgroundColor: const Color(0xFF6A62B7),
        elevation: 4,
        shape: const CircleBorder(),
        child: const Icon(Icons.add, color: Colors.white, size: 30),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 10,
        color: Colors.white,
        elevation: 20,
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            // Tab 0
            IconButton(
              icon: Icon(Icons.home_filled, size: 28),
              color: _currentIndex == 0 ? activeColor : inactiveColor,
              onPressed: () => _onTabTapped(0),
            ),
            // Tab 1
            IconButton(
              icon: Icon(Icons.mic, size: 28),
              color: _currentIndex == 1 ? activeColor : inactiveColor,
              onPressed: () => _onTabTapped(1),
            ),

            // Space for the notched FAB
            const SizedBox(width: 48),

            // Tab 2
            IconButton(
              icon: Icon(Icons.list_alt_rounded, size: 28),
              color: _currentIndex == 2 ? activeColor : inactiveColor,
              onPressed: () => _onTabTapped(2),
            ),
            // Tab 3
            IconButton(
              icon: Icon(Icons.person, size: 28),
              color: _currentIndex == 3 ? activeColor : inactiveColor,
              onPressed: () => _onTabTapped(3),
            ),
          ],
        ),
      ),
    );
  }
}
