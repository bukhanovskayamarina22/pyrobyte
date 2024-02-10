import 'package:flutter/material.dart';

class PaddingLeft18 extends StatelessWidget {
  final Widget? child;
  const PaddingLeft18({
    super.key, this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.only(left: 18), child: child);
  }
}

class PaddingTop16 extends StatelessWidget {
  final Widget? child;
  const PaddingTop16({
    super.key, this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.only(top: 16), child: child);
  }
}

class PaddingLeft16 extends StatelessWidget {
  final Widget? child;
  const PaddingLeft16({
    super.key, this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.only(left: 16), child: child);
  }
}

class PaddingTop8 extends StatelessWidget {
  final Widget? child;
  const PaddingTop8({
    super.key, this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.only(top: 8),
    child: child,);
  }
}

class PaddingRight8 extends StatelessWidget {
  final Widget? child;
  const PaddingRight8({
    super.key, this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8), 
      child: child,);
  }
}
class PaddingTop24 extends StatelessWidget {
  final Widget? child;
  const PaddingTop24({
    super.key, this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 24), 
      child: child,
      );
  }
}