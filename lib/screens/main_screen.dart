import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../theme/app_colors.dart';
import 'home_screen.dart';
import 'novels_screen.dart';
import 'comics_screen.dart';

// Import your other screens here:
// import 'novels_screen.dart';
// import 'comics_screen.dart';
// import 'profile_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    const HomeScreen(),
    const NovelsScreen(),
    const ComicsScreen(),
    const Center(child: Text('Profile Screen')), // Replace with ProfileScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // IndexedStack keeps your HomeScreen scroll position alive when switching tabs
      body: IndexedStack(index: _selectedIndex, children: _screens),
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          labelTextStyle: WidgetStateProperty.resolveWith<TextStyle>((
            Set<WidgetState> states,
          ) {
            // Color when the tab is selected
            if (states.contains(WidgetState.selected)) {
              return TextStyle(
                color: _getActiveColor(_selectedIndex),
                fontWeight: FontWeight.w600,
                fontSize: 12,
              );
            }
            // Color when the tab is unselected
            return TextStyle(
              color:
                  AppColors.secondaryText, // Or any muted color from your theme
              fontWeight: FontWeight.w500,
              fontSize: 12,
            );
          }),
        ),
        child: NavigationBar(
          selectedIndex: _selectedIndex,
          onDestinationSelected: (int index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          indicatorColor: Colors.transparent, // No indicator
          destinations: [
            NavigationDestination(
              icon: const Icon(Icons.home_outlined),
              selectedIcon: Icon(Icons.home_rounded, color: AppColors.primary),
              label: 'Home',
            ),
            NavigationDestination(
              icon: const Icon(Icons.menu_book_outlined),
              selectedIcon: Icon(
                Icons.menu_book_rounded,
                color: AppColors.novels,
              ),
              label: 'Novels',
            ),
            NavigationDestination(
              icon: SvgPicture.asset(
                'assets/icons/comics_inactive.svg',
                width: 21,
                height: 21,
              ),
              selectedIcon: SvgPicture.asset(
                'assets/icons/comics_active.svg',
                width: 21,
                height: 21,
              ),
              label: 'Comics',
            ),
            NavigationDestination(
              icon: const Icon(Icons.person_outline),
              selectedIcon: Icon(
                Icons.person_rounded,
                color: AppColors.primary,
              ),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}

// Add this helper inside _MainScreenState
Color _getActiveColor(int index) {
  switch (index) {
    case 1:
      return AppColors.novels; // Novels color
    case 2:
      return AppColors.comics; // Replace with your Comics active color (or AppColors.primary)
    case 0:
    case 3:
    default:
      return AppColors.primary; // Home & Profile color
  }
}
