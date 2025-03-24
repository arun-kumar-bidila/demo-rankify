import 'package:flutter/material.dart';

class BottomBar2 extends StatefulWidget {
  @override
  _BottomBar2State createState() => _BottomBar2State();
}

class _BottomBar2State extends State<BottomBar2> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    Center(child: Text("Home Page", style: TextStyle(fontSize: 22))),
    Center(child: Text("My Exams Page", style: TextStyle(fontSize: 22))),
    Center(child: Text("Ranks Page", style: TextStyle(fontSize: 22))),
    Center(child: Text("Community Page", style: TextStyle(fontSize: 22))),
    Center(child: Text("Experts Page", style: TextStyle(fontSize: 22))),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _pages[_selectedIndex], // Show selected page
          Align(
            alignment: Alignment.bottomCenter,
            child: Stack(
              clipBehavior: Clip.none, // Allow circle to overflow
              children: [
                Container(
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 5)],
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      buildNavItem(Icons.home, "Home", 0),
                      buildNavItem(Icons.list, "My Exams", 1),
                      buildNavItem(Icons.emoji_events, "Ranks", 2),
                      buildNavItem(Icons.group, "Community", 3),
                      buildNavItem(Icons.settings, "Experts", 4),
                    ],
                  ),
                ),
                Positioned(
                  top: -20, // Move half above bottom bar
                  left: MediaQuery.of(context).size.width / 5 * _selectedIndex + 20, 
                  child: AnimatedContainer(
                    duration: Duration(milliseconds: 200),
                    width: 55,
                    height: 55,
                    decoration: BoxDecoration(
                      color: Colors.pink.shade100,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      getIconForIndex(_selectedIndex),
                      color: Colors.pink,
                      size: 28,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
Widget buildNavItem(IconData icon, String label, int index) {
  bool isSelected = _selectedIndex == index;

  return GestureDetector(
    onTap: () => _onItemTapped(index),
    child: SizedBox(
      height: 60, // Ensure it fits within the bottom bar
      child: Column(
        mainAxisSize: MainAxisSize.min, // Prevents extra space issues
        children: [
          if (isSelected) SizedBox(height: 15), // Push down only if selected
          Icon(icon, color: isSelected ? Colors.transparent : Colors.grey, size: 28),
          SizedBox(height: 4),
          Text(label, style: TextStyle(color: isSelected ? Colors.pink : Colors.grey)),
        ],
      ),
    ),
  );
}


  IconData getIconForIndex(int index) {
    switch (index) {
      case 0:
        return Icons.home;
      case 1:
        return Icons.list;
      case 2:
        return Icons.emoji_events;
      case 3:
        return Icons.group;
      case 4:
        return Icons.settings;
      default:
        return Icons.home;
    }
  }
}
