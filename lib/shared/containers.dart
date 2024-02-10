import 'package:flutter/material.dart';

class ContainerWithRaduis extends StatelessWidget {
  final double? height;
  final double? width;
  final Color? backgroundColor;
  final Widget? child;
  final Color? borderColor;
  const ContainerWithRaduis({
    super.key,
    this.height,
    this.width,
    this.backgroundColor,
    this.child, this.borderColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        border: borderColor != null ? Border.all(width: 1, color: borderColor!): null,
          borderRadius: const BorderRadius.all(Radius.circular(4)),
          color: backgroundColor),
      child: child,
    );
  }
}

class IconButtonContainer extends StatelessWidget {
  final Function()? onPressed;
  final Color? backgoundColor;
  final bool isRound;
  final Icon icon;
  const IconButtonContainer({
    this.onPressed,
    required this.icon,
    super.key, this.isRound = false, this.backgoundColor,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
          color: backgoundColor,
          shape: isRound ? BoxShape.circle : BoxShape.rectangle
        ),
        width: 40, height: 40, child: icon),
    );
  }
}
