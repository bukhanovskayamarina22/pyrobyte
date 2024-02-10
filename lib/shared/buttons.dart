import 'package:flutter/material.dart';

class RectangularFixedSizeOutlinedButton extends StatelessWidget {
  final String text;
  
  // final 
  const RectangularFixedSizeOutlinedButton({
    super.key,
    required this.textTheme,
    required this.colorScheme,
    required this.text,
  });

  final TextTheme textTheme;
  final ColorScheme colorScheme;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        style: OutlinedButton.styleFrom(
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 19),
            // 160x48 + 1px berder on each side
            fixedSize: const Size(162, 50),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),
        onPressed: () {},
        child: Text(
          text,
          style: textTheme.headlineMedium!.copyWith(color: colorScheme.primary),
        ));
  }
}


class RectangularFullWidthOutlinedButton extends StatelessWidget {
  final String text;
  final Function()? onPressed;
  const RectangularFullWidthOutlinedButton({
    super.key,
    required this.textTheme, required this.colorScheme, required this.text, this.onPressed,
  });

  final TextTheme textTheme;
  final ColorScheme colorScheme;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
            // padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 19),
            minimumSize: const Size.fromHeight(34),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),
      onPressed: onPressed, 
      //wasn't able to figure out the exact font style
      child: Text(text, style: textTheme.bodySmall!.copyWith(color: colorScheme.primary),));
  }
}

class RectangularFilledButton extends StatelessWidget {
  final String text;
  final Function()? onPressed;
  const RectangularFilledButton({
    super.key,
    required this.textTheme, required this.colorScheme, required this.text, this.onPressed,
  });

  final TextTheme textTheme;
  final ColorScheme colorScheme;

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      
      style: FilledButton.styleFrom(
        backgroundColor: Theme.of(context).colorScheme.primary,
            fixedSize: const Size(336, 56),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),
      onPressed: onPressed ?? () {}, 
      child: Text(text, style: textTheme.headlineMedium!.copyWith(color: Theme.of(context).colorScheme.onPrimary)));
  }
}