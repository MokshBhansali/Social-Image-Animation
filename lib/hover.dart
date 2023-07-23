import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class HoverBox extends StatefulWidget {
  final IconData? iconData;
  final double? height;
  final double? width;
  final double? thickness;
  final Duration? duration;
  final Color? bordercolor;
  final Curve? curve;

  const HoverBox({
    super.key,
    this.bordercolor = Colors.black,
    this.duration = const Duration(milliseconds: 300),
    this.height = 70,
    this.thickness = 2.0,
    this.curve = Curves.bounceIn,
    this.width = 70,
    required this.iconData,
  });

  @override
  // ignore: library_private_types_in_public_api
  _HoverBoxState createState() => _HoverBoxState();
}

class _HoverBoxState extends State<HoverBox> {
  late double widthTopBottom;
  late double heightRightLeft = 0;

  @override
  void initState() {
    super.initState();
    widthTopBottom = widget.width!;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: MouseRegion(
        onEnter: (value) {
          widthTopBottom = 0;
          heightRightLeft = widget.height!;
          setState(() {});
        },
        onExit: (value) {
          widthTopBottom = widget.width!;
          heightRightLeft = 0;
          setState(() {});
        },
        child: Stack(
          children: [
            Positioned(
              left: 0,
              top: 0,
              child: AnimatedContainer(
                curve: widget.curve!,
                duration: widget.duration!,
                height: heightRightLeft,
                width: widget.thickness,
                color: Colors.black,
              ),
            ),
            Positioned(
              right: 0,
              bottom: 0,
              child: AnimatedContainer(
                duration: const Duration(
                  milliseconds: 300,
                ),
                height: heightRightLeft,
                width: widget.thickness,
                color: Colors.black,
              ),
            ),
            Positioned(
              left: 0,
              top: 0,
              child: AnimatedContainer(
                duration: widget.duration!,
                height: widget.thickness,
                width: widthTopBottom,
                color: Colors.black,
              ),
            ),
            Positioned(
              right: 0,
              bottom: 0,
              child: AnimatedContainer(
                duration: widget.duration!,
                height: widget.thickness,
                width: widthTopBottom,
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: widget.height,
              width: widget.width,
              child: Center(
                child: Icon(
                  widget.iconData ?? LineIcons.googleLogo,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
