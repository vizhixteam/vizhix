import 'package:flutter/material.dart';

import '../theme/app_text_styles.dart';
import '../theme/app_colors.dart';

import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Vizhix', style: AppTextStyles.screenTitle),
        actions: const [
          Icon(Icons.search_rounded),
          SizedBox(width: 16),
          Icon(Icons.notifications_none_rounded),
          SizedBox(width: 16),
        ],
      ),
      body: ListView(
        children: [
          // Category 1: Newly Released
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Newly Released',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),

          SizedBox(
            height: 180, // Required fixed height for horizontal ListView
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index) => Container(
                width: 120,
                margin: const EdgeInsets.only(left: 16),
                color: AppColors.surface, // Placeholder color for the item
              ),
            ),
          ),

          // Category 2: Trending
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Trending',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),

          SizedBox(
            height: 180,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index) => Container(
                width: 120,
                margin: const EdgeInsets.only(left: 16),
                color: AppColors.surface,
              ),
            ),
          ),
          // Category 3: Popular
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Popular',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),

          SizedBox(
            height: 180,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index) => Container(
                width: 120,
                margin: const EdgeInsets.only(left: 16),
                color: AppColors.surface,
              ),
            ),
          ),
          SizedBox(
            height: 50, // Standard small banner height
            width: double.infinity,
            child: Center(
              child: Text(
                'Banner Ad Placeholder',
                style: TextStyle(color: AppColors.secondaryText),
              ),
            ),
          ),
        ],
      ),

      bottomNavigationBar: NavigationBar(
        destinations: [
          NavigationDestination(
            icon: Icon(Icons.home_outlined),
            selectedIcon: Icon(Icons.home_rounded, color: AppColors.primary),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(Icons.menu_book_outlined),
            selectedIcon: Icon(Icons.menu_book_rounded, color: AppColors.novel),
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
            icon: Icon(Icons.person_rounded),
            selectedIcon: Icon(Icons.person_rounded, color: AppColors.primary),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
