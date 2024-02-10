import 'package:flutter/material.dart';

class Header2 extends StatelessWidget {
  final String text;
  const Header2({
    super.key,
    required this.textTheme,
    required this.text,
  });

  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: textTheme.headlineSmall,
    );
  }
}

class Header1 extends StatelessWidget {
  final String text;
  const Header1({
    super.key,
    required this.textTheme,
    required this.text,
  });

  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: textTheme.displayMedium,
    );
  }
}