import 'dart:io';

import 'package:flutter/material.dart';

import 'package:cached_network_image/cached_network_image.dart';

import 'const.dart';

class CustomAvatar extends StatelessWidget {
  final String? url;
  final String? name;
  final Color? borderColor;
  final Color backColor;
  final double width;
  const CustomAvatar({
    super.key,
    this.url,
    this.name,
    this.borderColor,
    this.width = 50,
    this.backColor = TColors.accent,
  });

  @override
  Widget build(BuildContext context) {
    if (url == null && name != null) {
      return SizedBox.square(
        dimension: width,
        child: Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: borderColor != null ? Border.all(color: borderColor!, width: 2) : null,
          ),
          child: CircleAvatar(
            backgroundColor: backColor,
            child: FractionallySizedBox(
              widthFactor: 0.45,
              heightFactor: 0.45,
              child: FittedBox(
                child: Text(
                  name![0],
                  style: const TextStyle(
                    fontSize: 24,
                    color: TColors.primary,
                  ),
                ),
              ),
            ),
          ),
        ),
      );
    }

    if (url!.contains('assets/')) {
      return SizedBox.square(
        dimension: width,
        child: Container(
          decoration: BoxDecoration(
            color: backColor,
            shape: BoxShape.circle,
            image: DecorationImage(image: AssetImage(url!), fit: BoxFit.contain),
          ),
        ),
      );
    }

    if (url!.contains('http')) {
      return SizedBox.square(
        dimension: width,
        child: Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: borderColor != null ? Border.all(color: borderColor!, width: 2) : null,
          ),
          child: CachedNetworkImage(
            imageUrl: url!,
            fit: BoxFit.cover,
            placeholder: (context, url) => Container(
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: TColors.accentLight,
              ),
            ),
            imageBuilder: (context, imageProvider) => Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(image: imageProvider, fit: BoxFit.cover),
              ),
            ),
            errorWidget: (context, url, error) => Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: backColor,
              ),
              child: const Center(
                child: Icon(
                  Icons.error_outline_rounded,
                  color: TColors.primary,
                ),
              ),
            ),
          ),
        ),
      );
    }
    return SizedBox.square(
      dimension: width,
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(image: FileImage(File(url!)), fit: BoxFit.cover),
        ),
      ),
    );
  }
}
