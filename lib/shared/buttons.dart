import 'package:flutter/material.dart';
import 'package:pyrobyte/shared/containers.dart';

class RectangularFixedSizeOutlinedButton extends StatelessWidget {
  final String text;

  // final
  const RectangularFixedSizeOutlinedButton({
    super.key,
    required this.text,
  });

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
          style: Theme.of(context)
              .textTheme
              .headlineMedium!
              .copyWith(color: Theme.of(context).colorScheme.primary),
        ));
  }
}

class RectangularFullWidthOutlinedButton extends StatelessWidget {
  final String text;
  final Function()? onPressed;
  const RectangularFullWidthOutlinedButton({
    super.key,
    required this.text,
    this.onPressed,
  });

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
        child: Text(
          text,
          style: Theme.of(context)
              .textTheme
              .bodySmall!
              .copyWith(color: Theme.of(context).colorScheme.primary),
        ));
  }
}

class RectangularFilledButton extends StatelessWidget {
  final String text;
  final Function()? onPressed;
  const RectangularFilledButton({
    super.key,
    required this.text,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return FilledButton(
        style: FilledButton.styleFrom(
            backgroundColor: Theme.of(context).colorScheme.primary,
            fixedSize: const Size(336, 56),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),
        onPressed: onPressed ?? () {},
        child: Text(text,
            style: Theme.of(context)
                .textTheme
                .headlineMedium!
                .copyWith(color: Theme.of(context).colorScheme.onPrimary)));
  }
}

class IsInUseToggleButton extends StatefulWidget {
  const IsInUseToggleButton({
    super.key,
  });

  @override
  State<IsInUseToggleButton> createState() => _IsInUseToggleButtonState();
}

class _IsInUseToggleButtonState extends State<IsInUseToggleButton> {
  late List<bool> selectedOption;

  @override
  void initState() {
    selectedOption = [true, false];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ToggleButtons(
        borderColor: Theme.of(context).colorScheme.primary,
        selectedBorderColor: Theme.of(context).colorScheme.primary,
        fillColor: Theme.of(context).colorScheme.primary,
        color: Theme.of(context).colorScheme.surface,
        textStyle: Theme.of(context).textTheme.bodySmall,
        borderRadius: const BorderRadius.all(Radius.circular(8)),
        onPressed: (index) {
          setState(() {
            if (index == 0) {
              selectedOption = [true, false];
            } else {
              selectedOption = [false, true];
            }
          });
        },
        isSelected: selectedOption,
        //width: 336 / 2
        constraints: const BoxConstraints(
            minHeight: 40, maxHeight: 40, minWidth: 163, maxWidth: 163),
        children: [
          Text(
            "Используется",
            style: Theme.of(context).textTheme.bodySmall!.copyWith(
                color: selectedOption[0]
                    ? Theme.of(context).colorScheme.surface
                    : Theme.of(context).colorScheme.primary),
          ),
          Text(
            "Не используется",
            style: Theme.of(context).textTheme.bodySmall!.copyWith(
                color: selectedOption[1]
                    ? Theme.of(context).colorScheme.surface
                    : Theme.of(context).colorScheme.primary),
          )
        ]);
  }
}

class CheckBox extends StatefulWidget {
  const CheckBox({
    super.key,
  });

  @override
  State<CheckBox> createState() => _CheckBoxState();
}

class _CheckBoxState extends State<CheckBox> {
  late bool isChecked;
  @override
  void initState() {
    isChecked = true;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isChecked = !isChecked;
        });
      },
      child: ContainerWithRaduis(
        height: 24,
        width: 24,
        borderColor: const Color(
          0xffd9e2f1,
        ),
        child: isChecked
            ? const Icon(
                Icons.check,
                size: 12.95,
              )
            : null,
      ),
    );
  }
}
