import 'package:flutter/material.dart';

import '../theme/app_text_styles.dart';
import '../theme/app_colors.dart';

class NovelsScreen extends StatelessWidget {
  const NovelsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Novels', style: AppTextStyles.screenTitle),
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 44,
            child: ListView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.only(left: 16, top: 8, right: 8),
              children: [
                _booktypeButton('All', true),
                _booktypeButton('Light Novels', false),
                _booktypeButton('Novels', false),
                _booktypeButton('Short Stories', false),
                _booktypeButton('Web Novels', false),
              ],
            ),
          ),

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
              padding: const EdgeInsets.only(left: 8, right: 8),
              itemCount: 10,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.only(left: 8, right: 8),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Container(
                    width: 120,
                    color: AppColors.surface, // Placeholder color for the item
                  ),
                ),
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
              padding: const EdgeInsets.only(left: 8, right: 8),
              itemCount: 10,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.only(left: 8, right: 8),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Container(
                    width: 120,
                    color: AppColors.surface, // Placeholder color for the item
                  ),
                ),
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
              padding: const EdgeInsets.only(left: 8, right: 8),
              itemCount: 10,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.only(left: 8, right: 8),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Container(
                    width: 120,
                    color: AppColors.surface, // Placeholder color for the item
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 16, width: 32),
          SizedBox(
            height: 90, // Standard small banner height
            width: double.infinity,
            child: Center(
              child: Text(
                'Banner Ad Placeholder',
                style: TextStyle(color: AppColors.secondaryText),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Category',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),

          SizedBox(
            height: 52,
            child: ListView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.only(left: 16, bottom: 16, right: 8),
              children: [
                _categoryButton('All', true),
                _categoryButton('Fantasy', false),
                _categoryButton('Romance', false),
                _categoryButton('Sci-Fi', false),
                _categoryButton('Thriller', false),
                _categoryButton('Action', false),
                _categoryButton('Comedy', false),
                _categoryButton('Horror', false),
                _categoryButton('Historical', false),
              ],
            ),
          ),
          SizedBox(
            height: 196,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.only(left: 8, right: 8, bottom: 16),
              itemCount: 4,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.only(left: 8, right: 8),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Container(
                    width: 120,
                    color: AppColors.surface, // Placeholder color for the item
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 196,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.only(left: 8, right: 8, bottom: 16),
              itemCount: 4,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.only(left: 8, right: 8),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Container(
                    width: 120,
                    color: AppColors.surface, // Placeholder color for the item
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 196,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.only(left: 8, right: 8, bottom: 16),
              itemCount: 4,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.only(left: 8, right: 8),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Container(
                    width: 120,
                    color: AppColors.surface, // Placeholder color for the item
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 16, width: 32),
          SizedBox(
            height: 90, // Standard small banner height
            width: double.infinity,
            child: Center(
              child: Text(
                'Banner Ad Placeholder',
                style: TextStyle(color: AppColors.secondaryText),
              ),
            ),
          ),

          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'You May Also Like',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),

          SizedBox(
            height: 196,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.only(left: 8, right: 8, bottom: 16),
              itemCount: 10,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.only(left: 8, right: 8),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Container(
                    width: 120,
                    color: AppColors.surface, // Placeholder color for the item
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 196,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.only(left: 8, right: 8, bottom: 16),
              itemCount: 10,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.only(left: 8, right: 8),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Container(
                    width: 120,
                    color: AppColors.surface, // Placeholder color for the item
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 196,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.only(left: 8, right: 8, bottom: 16),
              itemCount: 10,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.only(left: 8, right: 8),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Container(
                    width: 120,
                    color: AppColors.surface, // Placeholder color for the item
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 180,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.only(left: 8, right: 8),
              itemCount: 10,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.only(left: 8, right: 8),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Container(
                    width: 120,
                    color: AppColors.surface, // Placeholder color for the item
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 16, width: 32),
          SizedBox(
            height: 90, // Standard small banner height
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
    );
  }

  Widget _booktypeButton(String title, bool selected) {
    return Container(
      height: 36,
      margin: const EdgeInsets.only(right: 8),
      padding: const EdgeInsets.symmetric(horizontal: 14),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: selected ? AppColors.pureWhite : AppColors.elevatedSurface,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        title,
        style: AppTextStyles.bodyText.copyWith(
          fontSize: 13,
          color: selected ? AppColors.background : AppColors.primaryText,
        ),
      ),
    );
  }

  Widget _categoryButton(String title, bool selected) {
    return Container(
      height: 36,
      margin: const EdgeInsets.only(right: 8),
      padding: const EdgeInsets.symmetric(horizontal: 14),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: selected ? AppColors.pureWhite : AppColors.elevatedSurface,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        title,
        style: AppTextStyles.bodyText.copyWith(
          fontSize: 13,
          color: selected ? AppColors.background : AppColors.primaryText,
        ),
      ),
    );
  }
}
