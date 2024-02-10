import 'package:flutter/material.dart';
import 'package:pyrobyte/shared/paddings.dart';

class EventCard extends StatelessWidget {
  final String title;
  final String? subtitle;
  const EventCard({
    super.key,
    required this.colorScheme,
    required this.textTheme, required this.title, this.subtitle,
  });

  final ColorScheme colorScheme;
  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    return Container(
        clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(4)),
          color: Theme.of(context).colorScheme.surface),
      height: 48,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: double.infinity,
          width: 2,
          decoration: BoxDecoration(
            color: colorScheme.errorContainer,
          ),
          ), 
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Text(
                      "14:00",
                      style: textTheme.titleSmall!
                          .copyWith(color: colorScheme.tertiary),
                    ),
                    const PaddingLeft18(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: subtitle != null ?
                      [
                        Text(
                          title,
                          style: textTheme.titleSmall,
                        ),
                        Text(subtitle!, style: textTheme.bodyLarge!.copyWith(color: colorScheme.tertiary),),
                      ] : [
                        Text(
                          title,
                          style: textTheme.titleSmall,
                        ),
                      ]
                    ),
                  ],
                )
              ],
                                      ),
            )), 
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(4),
            width: 40,
            height: 40,
            child: const Icon(
              Icons.arrow_forward_ios, 
              size: 10, 
              //TODO: move color to theme
              color: Color(0xffd9e2f1),)
            ),
        ],
      ),
    );
  }
}
