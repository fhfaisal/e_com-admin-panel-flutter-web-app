import 'dart:io';
import 'dart:typed_data';    // ← for Uint8List
import 'package:flutter/material.dart';
import 'package:t_store/utils/constants/sizes.dart';

import '../../../utils/constants/enums.dart';

class TRoundedImage extends StatelessWidget {
  const TRoundedImage({
    super.key,
    this.image,
    this.file,
    this.border,
    this.width = 56,
    this.height = 56,
    this.memoryImage,
    this.overlayColor,
    required this.imageType,
    this.backgroundColor,
    this.margin,
    this.padding = TSizes.sm,
    this.applyImageRadius = true,
    this.fit = BoxFit.contain,
    this.borderRadius = TSizes.md,
  });

  final bool applyImageRadius;
  final BoxBorder? border;
  final double borderRadius;
  final BoxFit? fit;
  final String? image;
  final File? file;
  final ImageType imageType;
  final Color? overlayColor;
  final Color? backgroundColor;
  final Uint8List? memoryImage;  // ← fixed typo here
  final double width, height, padding;
  final double? margin;

  @override
  Widget build(BuildContext context) {
    Widget img;
    switch (imageType) {
      case ImageType.asset:
        img = Image.asset(image ?? '', fit: fit!);
        break;
      case ImageType.network:
        img = Image.network(image ?? '', fit: fit!);
        break;
      case ImageType.file:
        img = file != null
            ? Image.file(file!, fit: fit!)
            : const SizedBox.shrink();
        break;
      case ImageType.memory:
        img = memoryImage != null
            ? Image.memory(memoryImage!, fit: fit!)
            : const SizedBox.shrink();
        break;
    }

    // apply rounding to the image itself if requested
    if (applyImageRadius) {
      img = ClipRRect(
        borderRadius: BorderRadius.circular(borderRadius),
        child: img,
      );
    }

    // wrap in Stack to allow an optional color overlay
    final content = Stack(
      fit: StackFit.expand,
      children: [
        img,
        if (overlayColor != null)
          Container(color: overlayColor),
      ],
    );

    return Container(
      width: width,
      height: height,
      margin: margin != null
          ? EdgeInsets.all(margin!)
          : null,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        color: backgroundColor,
        border: border,
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: content,
    );
  }
}
