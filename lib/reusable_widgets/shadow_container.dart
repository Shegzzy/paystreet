import 'package:flutter/material.dart';

import '../../utils/constants/dimensions.dart';

class ShadowContainer extends StatelessWidget {
  final Widget child;
  final EdgeInsets padding;
  const ShadowContainer({
    super.key, required this.child, required this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      margin: EdgeInsets.only(
          top: Dimensions.height8),
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 0,
              blurRadius: 7,
              offset: const Offset(0, 3), // Adjust the offset
            ),
          ],
          borderRadius: BorderRadius.circular(
              Dimensions.radius8 - 4),
          color: Colors.white
      ),
      child: child,
    );
  }
}