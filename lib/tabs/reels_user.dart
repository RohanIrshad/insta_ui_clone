import 'package:flutter/material.dart';

class ReelsView extends StatelessWidget {
  const ReelsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            final double iconSize = constraints.maxWidth * 0.4;
            final double fontSize = constraints.maxWidth * 0.1;

            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.view_day_rounded,
                  size: iconSize,
                ),
                Text(
                  "No Reels Yet",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: fontSize,
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
