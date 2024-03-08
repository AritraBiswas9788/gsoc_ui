import 'dart:ui';

import 'package:flutter/material.dart';
class GlassBox extends StatelessWidget {
  GlassBox({super.key,required this.height,required this.width,this.child});

  int height;
  int width;
  Widget? child;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Container(
        width: height.toDouble(),
        height: width.toDouble(),
        child: Stack(
          children: [
            BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
              child: Container(),
            ),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.white.withOpacity(0.1)),
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(colors: [
                    Colors.white.withOpacity(0.2),
                    Colors.white.withOpacity(0.0)
                  ])),
            ),

            Center(
              child: child,
            )
          ],
        ),

      ),
    );
  }
}
