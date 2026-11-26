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
      ),
      body: const Center(child: Text('Welcome to the Home Screen!')),
      bottomNavigationBar: NavigationBar(
        destinations: [
          NavigationDestination(icon: Icon(Icons.home_outlined),
          selectedIcon: Icon(
            Icons.home_rounded,
            color: AppColors.primary,
          )
          , label: 'Home'),
          NavigationDestination(
            icon: Icon(Icons.menu_book_outlined),
            selectedIcon: Icon(
              Icons.menu_book_rounded,
              color: AppColors.novel,
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
            icon: Icon(Icons.person_rounded),
            selectedIcon: Icon(
              Icons.person_rounded,
              color: AppColors.primary,
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
