import 'package:flutter/material.dart';

class TRoundedContainer extends StatelessWidget {
  const TRoundedContainer({
    super.key,
    this.borderRadius,
    this.backgroundColor,
    this.height,
    this.width,
    this.child,
  });

  final BorderRadius? borderRadius;
  final Color? backgroundColor;
  final double? height;
  final double? width;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 100,
      width: width ?? 100,
      decoration: BoxDecoration(
          borderRadius:
          borderRadius ?? const BorderRadius.all(Radius.circular(30)),
          color: backgroundColor ?? Theme.of(context).colorScheme.primary),
      child: child,
    );
  }
}