import 'dart:async';

import 'package:flutter/material.dart';

class LoadLevel extends StatefulWidget {
  const LoadLevel({
    super.key,
  });

  @override
  State<LoadLevel> createState() => _LoadLevelState();
}

class _LoadLevelState extends State<LoadLevel> {
  // double loadLevel = 85;
  double _begin = 0;
  double _end = 85;

  // ignore: unused_element
  _changeLoadLevel(double newLevel) {
    setState(() {
      _begin = _end;
      _end = newLevel;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AnimatedLoadLevel(
          begin: _begin,
          end: _end,
        ),
        AnimatedLoadLevelText(
          begin: _begin,
          end: _end,
        )
      ],
    );
  }
}

class AnimatedLoadLevel extends StatefulWidget {
  final double begin;
  final double end;
  const AnimatedLoadLevel({
    super.key,
    required this.begin,
    required this.end,
  });

  @override
  State<AnimatedLoadLevel> createState() => _AnimatedLoadLevelState();
}

class _AnimatedLoadLevelState extends State<AnimatedLoadLevel>
    with TickerProviderStateMixin {
  late AnimationController firstController;
  late Animation<double> firstAnimation;

  late AnimationController secondController;
  late Animation<double> secondAnimation;

  late AnimationController thirdController;
  late Animation<double> thirdAnimation;

  late AnimationController fourthController;
  late Animation<double> fourthAnimation;

  late AnimationController heightController;
  late Animation<double> heightAnimation;

  @override
  void initState() {
    super.initState();

    firstController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 1500));
    firstAnimation = Tween<double>(begin: 1.5, end: 2.0).animate(
        CurvedAnimation(parent: firstController, curve: Curves.easeInOut))
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          firstController.reverse();
        } else if (status == AnimationStatus.dismissed) {
          firstController.forward();
        }
      });

    secondController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 1500));
    secondAnimation = Tween<double>(begin: 1.5, end: 2.0).animate(
        CurvedAnimation(parent: secondController, curve: Curves.easeInOut))
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          secondController.reverse();
        } else if (status == AnimationStatus.dismissed) {
          secondController.forward();
        }
      });

    thirdController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 1500));
    thirdAnimation = Tween<double>(begin: 1.5, end: 2.0).animate(
        CurvedAnimation(parent: thirdController, curve: Curves.easeInOut))
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          thirdController.reverse();
        } else if (status == AnimationStatus.dismissed) {
          thirdController.forward();
        }
      });

    fourthController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 1500));
    fourthAnimation = Tween<double>(begin: 1.5, end: 2.0).animate(
        CurvedAnimation(parent: fourthController, curve: Curves.easeInOut))
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          fourthController.reverse();
        } else if (status == AnimationStatus.dismissed) {
          fourthController.forward();
        }
      });

    heightController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    heightAnimation = Tween<double>(begin: widget.begin, end: widget.end)
        .animate(heightController);

    Timer(const Duration(seconds: 2), () {
      firstController.forward();
    });

    Timer(const Duration(milliseconds: 1600), () {
      secondController.forward();
    });

    Timer(const Duration(milliseconds: 800), () {
      thirdController.forward();
    });

    fourthController.forward();

    heightController.forward();
  }

  @override
  void dispose() {
    firstController.dispose();
    secondController.dispose();
    thirdController.dispose();
    fourthController.dispose();
    heightController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Stack(
        children: [
          Container(
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
              border: Border.all(width: 1, color: Colors.white),
            ),
            child: CustomPaint(
              painter: WavePainer(
                firstAnimation.value,
                secondAnimation.value,
                thirdAnimation.value,
                fourthAnimation.value,
                heightPercentage: heightAnimation.value,
              ),
              child: const SizedBox(
                height: 160,
                width: 160,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class WavePainer extends CustomPainter {
  final double firstValue;
  final double secondValue;
  final double thirdValue;
  final double fourthValue;
  final double heightPercentage;

  WavePainer(
      this.firstValue, this.secondValue, this.thirdValue, this.fourthValue,
      {required this.heightPercentage});

  double convertPercentageToValue(double percentage) {
    // Ensure percentage is within the range of 0 to 100
    percentage = percentage.clamp(0.0, 100.0);

    // Calculate the value between 0 and 2
    double value = (100 - percentage) / 100 * 2;

    return value;
  }

  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = const Color(0xff218cef).withOpacity(0.48)
      ..style = PaintingStyle.fill;

    var path = Path()
      ..moveTo(
          0,
          ((size.height * convertPercentageToValue(heightPercentage)) /
              firstValue))
      ..cubicTo(
        size.width * 0.33,
        ((size.height * convertPercentageToValue(heightPercentage)) /
            secondValue),
        size.width * 0.66,
        ((size.height * convertPercentageToValue(heightPercentage)) /
            thirdValue),
        size.width,
        ((size.height * convertPercentageToValue(heightPercentage)) /
            fourthValue),
      )
      ..lineTo(size.width, size.height)
      ..lineTo(0, size.height);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class AnimatedLoadLevelText extends StatefulWidget {
  final double begin;
  final double end;
  const AnimatedLoadLevelText({
    super.key,
    required this.begin,
    required this.end,
  });

  @override
  State<AnimatedLoadLevelText> createState() => _AnimatedLoadLevelTextState();
}

class _AnimatedLoadLevelTextState extends State<AnimatedLoadLevelText>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    _animation =
        Tween<double>(begin: widget.begin, end: widget.end).animate(_controller)
          ..addListener(() {
            setState(() {});
          });
    super.initState();

    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 16, 8, 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "${_animation.value.toStringAsFixed(0)}%",
            style: Theme.of(context).textTheme.displayLarge,
          ),
          Text(
            "Текущий уровень загрузки",
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ],
      ),
    );
  }
}
