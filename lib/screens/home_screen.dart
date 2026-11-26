import 'package:flutter/material.dart';
import '../theme/app_text_styles.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Vizhix', style: AppTextStyles.screenTitle),
      ),
      body: const Center(
        child: Text('Welcome to the Home Screen!'),
      ),
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home_rounded),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(Icons.menu_book_rounded),
            label: 'Novels',
          ),
          NavigationDestination(
            icon: Icon(Icons.dashboard_customize_rounded),
            label: 'Comics',
          ),
          NavigationDestination(
            icon: Icon(Icons.person_rounded),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}