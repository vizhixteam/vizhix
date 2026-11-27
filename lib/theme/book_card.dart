import 'package:Vizhix/theme/app_text_styles.dart';
import 'package:flutter/material.dart';

import 'app_colors.dart';

class BookCard extends StatelessWidget {
  final String image;
  final String title;
  final bool isNovel;

  const BookCard({
    super.key,
    required this.image,
    required this.title,
    required this.isNovel,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AspectRatio(
          aspectRatio: 2 / 3,
          child: ClipRRect(
            borderRadius: BorderRadiusGeometry.circular(12),
            child: Image.asset(
              image,
              fit: BoxFit.cover,
              width: double.infinity,
            ),
          ),
        ),
        const SizedBox(height: 8),
        Text(
          isNovel ? 'NOVEL' : 'COMIC',
          style: TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.w700,
            color: isNovel ? AppColors.novels : AppColors.comics,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          title,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: AppTextStyles.bookTitle,
        ),
      ],
    );
  }
}
