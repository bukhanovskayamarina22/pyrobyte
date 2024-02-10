import 'package:flutter/material.dart';

class Header2 extends StatelessWidget {
  final String text;
  const Header2({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.headlineSmall,
    );
  }
}

class Header1 extends StatelessWidget {
  final String text;
  const Header1({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.displayMedium,
    );
  }
}
