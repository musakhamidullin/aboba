import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  BottomNavBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  final int currentIndex;
  final Function(int) onTap;

  final list = <BottomNavigationBarItem>[];

  @override
  Widget build(BuildContext context) {
    int index = currentIndex;
    final theme = Theme.of(context);
    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(
          label: '',
          icon: Icon(Icons.home,
              color: 0 == index ? theme.primaryColor : Colors.grey),
        ),
        BottomNavigationBarItem(
            label: '',
            icon: Icon(Icons.mail,
                color: 1 == index ? theme.primaryColor : Colors.grey)),
        BottomNavigationBarItem(
            label: '',
            icon: Icon(Icons.chat,
                color: 2 == index ? theme.primaryColor : Colors.grey)),
        BottomNavigationBarItem(
            label: '',
            icon: Icon(Icons.account_circle_outlined,
                color: 3 == index ? theme.primaryColor : Colors.grey)),
      ],
      currentIndex: currentIndex,
      onTap: onTap,
      selectedFontSize: 14,
      unselectedFontSize: 14,
    );
  }
}
