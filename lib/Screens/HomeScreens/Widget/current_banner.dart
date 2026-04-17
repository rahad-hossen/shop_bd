import 'package:flutter/material.dart';
class CurrentBanner extends StatefulWidget {
  final double height;
  final Color color;
  const CurrentBanner(this.height, {required this.color});

  @override
  State<CurrentBanner> createState() => _CurrentBannerState();
}

class _CurrentBannerState extends State<CurrentBanner> {
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(microseconds: 300),
      height: widget.height,
      width: 15,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: widget.color,
      ),
    );
  }
}
