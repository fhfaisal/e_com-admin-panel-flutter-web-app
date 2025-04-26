import 'package:flutter/material.dart';

import '../../../utils/constants/sizes.dart';

/// A responsive widget that displays different layouts based on screen width.
class TResponsiveWidget extends StatelessWidget {
  /// Creates a responsive widget.
  ///
  /// Requires [mobile], [tablet], and [desktop] widgets to be provided.
  const TResponsiveWidget({
    super.key,
    required this.desktop,
    required this.tablet,
    required this.mobile,
  });

  final Widget desktop;
  final Widget tablet;
  final Widget mobile;

  @override
  Widget build(BuildContext context) {
    // Use LayoutBuilder to get the constraints of the parent widget.
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final double maxWidth = constraints.maxWidth;

        // Check for Desktop size first
        if (maxWidth >= TSizes.desktopScreenSize) {
          return desktop;
        }
        // Then check for Tablet size
        else if (maxWidth >= TSizes.tabletScreenSize) {
          // We are >= tabletScreenSize but < desktopScreenSize
          return tablet;
        }
        // Otherwise, it's Mobile size
        else {
          // We are < tabletScreenSize
          return mobile;
        }
      },
    );
  }
}
