import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:path_provider/path_provider.dart';

class ImageHelper {
  static final ImagePicker _picker = ImagePicker();

  /// 1. FOR BOOK & COMIC COVERS (Single image, small 600x900px card size)
  static Future<File?> pickAndCompressCover() async {
    final XFile? pickedFile = await _picker.pickImage(
      source: ImageSource.gallery,
    );
    if (pickedFile == null) return null;

    final tempDir = await getTemporaryDirectory();
    final targetPath =
        '${tempDir.path}/cover_${DateTime.now().millisecondsSinceEpoch}.jpg';

    final XFile? compressedFile = await FlutterImageCompress.compressAndGetFile(
      pickedFile.path,
      targetPath,
      minWidth: 600,
      minHeight: 900,
      quality: 80,
      format: CompressFormat.jpeg,
    );

    return compressedFile != null ? File(compressedFile.path) : null;
  }

  /// 2. FOR COMIC & DESIGNED NOVEL PAGES (Multiple pages, crisp 1080px reading width)
  static Future<List<File>> pickAndCompressChapterPages() async {
    final List<XFile> pickedFiles = await _picker.pickMultiImage();
    if (pickedFiles.isEmpty) return [];

    final tempDir = await getTemporaryDirectory();
    final List<File> compressedPages = [];

    for (int i = 0; i < pickedFiles.length; i++) {
      final targetPath =
          '${tempDir.path}/page_${DateTime.now().millisecondsSinceEpoch}_$i.jpg';

      final XFile? compressed = await FlutterImageCompress.compressAndGetFile(
        pickedFiles[i].path,
        targetPath,
        minWidth: 1080,
        minHeight: 1920,
        quality: 85, // Slightly higher quality so small text on designed pages stays sharp
        format: CompressFormat.jpeg,
      );

      if (compressed != null) {
        compressedPages.add(File(compressed.path));
      }
    }

    return compressedPages;
  }
}
