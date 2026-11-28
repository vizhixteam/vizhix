import 'package:flutter/material.dart';

import '../theme/app_text_styles.dart';
import '../theme/app_colors.dart';

class NovelsScreen extends StatefulWidget {
  const NovelsScreen({super.key});

  @override
  State<NovelsScreen> createState() => _NovelsScreenState();
}

class _NovelsScreenState extends State<NovelsScreen> {
  String _selectedBookType = 'All';
  String _selectedCategory = 'All';

  final List<String> _bookTypes = [
    'All',
    'Light Novels',
    'Novels',
    'Short Stories',
    'Web Novels',
  ];

  final List<String> _categories = [
    'All',
    'Fantasy',
    'Romance',
    'Sci-Fi',
    'Thriller',
    'Action',
    'Comedy',
    'Horror',
    'Historical',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Novels', style: AppTextStyles.screenTitle),
      ),
      body: ListView(
        children: [
          // Book Type Filter Pills
          SizedBox(
            height: 44,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.only(left: 16, top: 8, right: 8),
              itemCount: _bookTypes.length,
              itemBuilder: (context, index) {
                final type = _bookTypes[index];
                return _bookButton(type, _selectedBookType == type);
              },
            ),
          ),

          // Section 1: Newly Released
          _buildSectionHeader('Newly Released'),
          _buildStoryRow(itemCount: 10, tagLabel: 'NEW'),

          // Section 2: Trending
          _buildSectionHeader('Trending'),
          _buildStoryRow(itemCount: 10),

          // Section 3: Popular
          _buildSectionHeader('Popular'),
          _buildStoryRow(itemCount: 10),

          const SizedBox(height: 16),
          _buildBannerAdPlaceholder(),

          // Section 4: Category Filter & Rows
          _buildSectionHeader('Category'),
          SizedBox(
            height: 52,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.only(left: 16, bottom: 16, right: 8),
              itemCount: _categories.length,
              itemBuilder: (context, index) {
                final category = _categories[index];
                return _categoryButton(category, _selectedCategory == category);
              },
            ),
          ),
          _buildStoryRow(itemCount: 4, bottomPadding: 16),
          _buildStoryRow(itemCount: 4, bottomPadding: 16),
          _buildStoryRow(itemCount: 4, bottomPadding: 16),

          const SizedBox(height: 16),
          _buildBannerAdPlaceholder(),

          // Section 5: You May Also Like
          _buildSectionHeader('You May Also Like'),
          _buildStoryRow(itemCount: 10, bottomPadding: 16),
          _buildStoryRow(itemCount: 10, bottomPadding: 16),
          _buildStoryRow(itemCount: 10, bottomPadding: 16),
          _buildStoryRow(itemCount: 10),

          const SizedBox(height: 16),
          _buildBannerAdPlaceholder(),
        ],
      ),
    );
  }

  Widget _buildSectionHeader(String title) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Text(
        title,
        style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget _buildStoryRow({
    required int itemCount,
    double bottomPadding = 0,
    String? tagLabel,
  }) {
    // 175 (cover) + 6 (gap) + ~48 (2-line title + subtitle) + bottomPadding
    return SizedBox(
      height: 232 + bottomPadding,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.only(left: 8, right: 8, bottom: bottomPadding),
        itemCount: itemCount,
        itemBuilder: (context, index) {
          return _buildNovelCard(
            title: 'Shadow Sovereign ${(index + 1) * 12}',
            subtitle: 'Fantasy • Chapter ${(index + 1) * 12}',
            imagePath: 'assets/images/Novel_covers/thefellowshipofring.jpg',
            tagLabel: tagLabel,
          );
        },
      ),
    );
  }

  Widget _buildNovelCard({
    required String title,
    required String subtitle,
    String? imagePath,
    String? tagLabel,
  }) {
    return Container(
      width: 120,
      margin: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 1. Cover Image Box
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Stack(
              children: [
                Container(
                  width: 120,
                  height: 175,
                  color: AppColors.surface,
                  child: imagePath != null
                      ? Image.asset(imagePath, fit: BoxFit.cover,)
                      : null,
                ),
                // Optional Amber Badge in top-left corner
                if (tagLabel != null)
                  Positioned(
                    top: 8,
                    left: 8,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 6,
                        vertical: 2,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Text(
                        tagLabel,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ),

          const SizedBox(height: 6),

          // 2. Story Title Below Card
          Text(
            title,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: AppTextStyles.bodyText.copyWith(
              fontSize: 13,
              fontWeight: FontWeight.w600,
              color: AppColors.primaryText,
              height: 1.2,
            ),
          ),

          const SizedBox(height: 3),

          // 3. Genre / Chapter Subtitle
          Text(
            subtitle,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontSize: 11, color: AppColors.secondaryText),
          ),
        ],
      ),
    );
  }

  Widget _buildBannerAdPlaceholder() {
    return SizedBox(
      height: 90,
      width: double.infinity,
      child: Center(
        child: Text(
          'Banner Ad Placeholder',
          style: TextStyle(color: AppColors.secondaryText),
        ),
      ),
    );
  }

  Widget _bookButton(String type, bool isSelected) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedBookType = type;
        });
      },
      child: _buildChipContainer(type, isSelected),
    );
  }

  Widget _categoryButton(String category, bool isSelected) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedCategory = category;
        });
      },
      child: _buildChipContainer(category, isSelected),
    );
  }

 Widget _buildChipContainer(String title, bool selected) {
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
