
import 'package:flutter/material.dart';
import 'app_colors.dart';

/// Typography system for Vizhix.
///
/// Sora       - Branding and headings
/// Manrope    - Book titles and creator names
/// Inter      - General app UI
/// Lora       - Romance and general fiction
/// Literata   - Fantasy and horror
/// Source Serif 4 - Mystery and thriller
/// Merriweather  - Historical fiction
/// Crimson Pro   - Poetry
/// Noto Sans Tamil  - Tamil UI
/// Noto Serif Tamil - Tamil novels

abstract final class AppTextStyles {

  // --------------------------------------------------
  // FONT FAMILY NAMES
  // --------------------------------------------------

  static const _sora = 'Sora';
  static const _manrope = 'Manrope';
  static const _inter = 'Inter';

  static const _lora = 'Lora';
  static const _literata = 'Literata';
  static const _sourceSerif = 'SourceSerif4';
  static const _merriweather = 'Merriweather';
  static const _crimsonPro = 'CrimsonPro';

  static const _notoSansTamil = 'NotoSansTamil';
  static const _notoSerifTamil = 'NotoSerifTamil';


  // --------------------------------------------------
  // BRANDING AND HEADINGS - SORA
  // --------------------------------------------------

  static const brandWordmark = TextStyle(
    fontFamily: _sora,
    fontWeight: FontWeight.w800,
    fontSize: 30,
    color: AppColors.primaryText,
  );

  static const screenTitle = TextStyle(
    fontFamily: _sora,
    fontWeight: FontWeight.w700,
    fontSize: 26,
    color: AppColors.primaryText,
  );

  static const sectionTitle = TextStyle(
    fontFamily: _sora,
    fontWeight: FontWeight.w600,
    fontSize: 19,
    color: AppColors.primaryText,
  );

  static const subheading = TextStyle(
    fontFamily: _sora,
    fontWeight: FontWeight.w500,
    fontSize: 18,
    color: AppColors.primaryText,
  );


  // --------------------------------------------------
  // BOOK TITLES AND CREATOR NAMES - MANROPE
  // --------------------------------------------------

  static const bookTitle = TextStyle(
    fontFamily: _manrope,
    fontWeight: FontWeight.w600,
    fontSize: 16,
    color: AppColors.primaryText,
  );

  static const featuredBookTitle = TextStyle(
    fontFamily: _manrope,
    fontWeight: FontWeight.w800,
    fontSize: 18,
    color: AppColors.primaryText,
  );

  static const creatorName = TextStyle(
    fontFamily: _manrope,
    fontWeight: FontWeight.w700,
    fontSize: 14,
    color: AppColors.primaryText,
  );

  static const username = TextStyle(
    fontFamily: _manrope,
    fontWeight: FontWeight.w500,
    fontSize: 13,
    color: AppColors.secondaryText,
  );


  // --------------------------------------------------
  // GENERAL APP UI - INTER
  // --------------------------------------------------

  static const bodyText = TextStyle(
    fontFamily: _inter,
    fontWeight: FontWeight.w400,
    fontSize: 14,
    height: 1.5,
    color: AppColors.secondaryText,
  );

  static const bodyTextSmall = TextStyle(
    fontFamily: _inter,
    fontWeight: FontWeight.w400,
    fontSize: 13,
    height: 1.4,
    color: AppColors.secondaryText,
  );

  static const buttonLabel = TextStyle(
    fontFamily: _inter,
    fontWeight: FontWeight.w600,
    fontSize: 14,
    color: AppColors.primaryText,
  );

  static const navLabel = TextStyle(
    fontFamily: _inter,
    fontWeight: FontWeight.w500,
    fontSize: 11,
    color: AppColors.secondaryText,
  );

  static const metadata = TextStyle(
    fontFamily: _inter,
    fontWeight: FontWeight.w500,
    fontSize: 11,
    color: AppColors.mutedText,
  );

  static const commentText = TextStyle(
    fontFamily: _inter,
    fontWeight: FontWeight.w400,
    fontSize: 14,
    height: 1.4,
    color: AppColors.secondaryText,
  );

  static const inputText = TextStyle(
    fontFamily: _inter,
    fontWeight: FontWeight.w400,
    fontSize: 15,
    color: AppColors.primaryText,
  );

  static const inputHint = TextStyle(
    fontFamily: _inter,
    fontWeight: FontWeight.w400,
    fontSize: 15,
    color: AppColors.mutedText,
  );

  static const errorText = TextStyle(
    fontFamily: _inter,
    fontWeight: FontWeight.w400,
    fontSize: 12,
    color: AppColors.error,
  );


  // --------------------------------------------------
  // NOVEL READER - ENGLISH
  // --------------------------------------------------

  static const novelBody = TextStyle(
    fontFamily: _lora,
    fontWeight: FontWeight.w400,
    fontSize: 18,
    height: 1.75,
    letterSpacing: 0.1,
    color: AppColors.novelText,
  );

  static const novelBold = TextStyle(
    fontFamily: _lora,
    fontWeight: FontWeight.w700,
    fontSize: 18,
    height: 1.75,
    color: AppColors.novelText,
  );

  // Romance and general fiction
  static const romanceReader = TextStyle(
    fontFamily: _lora,
    fontWeight: FontWeight.w400,
    fontSize: 18,
    height: 1.75,
    color: AppColors.novelText,
  );

  // Fantasy and horror
  static const fantasyReader = TextStyle(
    fontFamily: _literata,
    fontWeight: FontWeight.w400,
    fontSize: 18,
    height: 1.75,
    color: AppColors.novelText,
  );

  // Mystery and thriller
  static const mysteryReader = TextStyle(
    fontFamily: _sourceSerif,
    fontWeight: FontWeight.w400,
    fontSize: 18,
    height: 1.75,
    color: AppColors.novelText,
  );

  // Historical fiction
  static const historicalReader = TextStyle(
    fontFamily: _merriweather,
    fontWeight: FontWeight.w400,
    fontSize: 18,
    height: 1.75,
    color: AppColors.novelText,
  );

  // Poetry
  static const poetryReader = TextStyle(
    fontFamily: _crimsonPro,
    fontWeight: FontWeight.w400,
    fontSize: 20,
    height: 1.8,
    color: AppColors.novelText,
  );


  // --------------------------------------------------
  // TAMIL LANGUAGE - UI
  // --------------------------------------------------

  static const tamilBody = TextStyle(
    fontFamily: _notoSansTamil,
    fontWeight: FontWeight.w400,
    fontSize: 14,
    height: 1.5,
    color: AppColors.secondaryText,
  );

  static const tamilHeading = TextStyle(
    fontFamily: _notoSansTamil,
    fontWeight: FontWeight.w700,
    fontSize: 22,
    color: AppColors.primaryText,
  );


  // --------------------------------------------------
  // TAMIL NOVEL READER
  // --------------------------------------------------

  static const tamilNovelBody = TextStyle(
    fontFamily: _notoSerifTamil,
    fontWeight: FontWeight.w400,
    fontSize: 18,
    height: 1.9,
    color: AppColors.novelText,
  );

  static const tamilNovelBold = TextStyle(
    fontFamily: _notoSerifTamil,
    fontWeight: FontWeight.w700,
    fontSize: 18,
    height: 1.9,
    color: AppColors.novelText,
  );
}
