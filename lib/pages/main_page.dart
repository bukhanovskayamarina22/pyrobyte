import 'package:flutter/material.dart';
import 'package:pyrobyte/shared/buttons.dart';
import 'package:pyrobyte/widgets/event_card.dart';
import 'package:pyrobyte/widgets/load_level.dart';
import 'package:pyrobyte/models/finances.dart';
import 'package:pyrobyte/shared/headers.dart';

import 'package:pyrobyte/main.dart';

import 'package:pyrobyte/shared/paddings.dart';
import 'package:pyrobyte/shared/theme.dart';
import 'package:pyrobyte/widgets/vending_machine_card.dart';

class MainPage extends StatelessWidget {
  final TextTheme textTheme; 
  final ColorScheme colorScheme;
  const MainPage({super.key, required this.textTheme, required this.colorScheme});

  @override
  Widget build(BuildContext context) {

    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 8, 19, 8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Header1(
                    textTheme: textTheme,
                    text: "Торговые автоматы",
                  ),
                  const PaddingTop24(),
                  VendingMachineCard(textTheme: textTheme, colorScheme: colorScheme),
                  const PaddingTop24(),
                  Row(
                    children: [
                      Container(
                        height: 160,
                        width: 160,
                        decoration: BoxDecoration(
                          color: colorScheme.surface,
                        ),
                        child: LoadLevel(
                          textTheme: textTheme,
                        ),
                      ),
                      PaddingLeft16(
                        child: Column(
                          children: [
                            //48 - 4 px button borders
                            const Padding(padding: EdgeInsets.only(top: 44)),
                            RectangularFixedSizeOutlinedButton(
                              textTheme: textTheme,
                              colorScheme: colorScheme,
                              text: "Загрузка",
                            ),
                            const PaddingTop16(),
                            RectangularFixedSizeOutlinedButton(
                              textTheme: textTheme,
                              colorScheme: colorScheme,
                              text: "Инвентаризация",
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  const PaddingTop24(),
                  Header2(
                    textTheme: textTheme,
                    text: "События",
                  ),
                  Column(
                    children: [
                      EventCard(colorScheme: colorScheme, textTheme: textTheme, title: "Сейф переполнен",),
                      const PaddingTop8(),
                      EventCard(colorScheme: colorScheme, textTheme: textTheme, title: "Сейф переполнен", subtitle: "2341245",),
                      const PaddingTop8(),
                      EventCard(colorScheme: colorScheme, textTheme: textTheme, title: "Сейф переполнен", subtitle: "Toshiba снековый",),
                    ],
                  ),
                  const PaddingTop16(),
                  RectangularFilledButton(textTheme: textTheme, colorScheme: colorScheme, text: "Смотреть еще",), 
                  const PaddingTop24(),
                  Header2(textTheme: textTheme, text: "Финансы"),
                  const PaddingTop16(), 
                  
                ],
              ),
            ),
          ],
                ),
        ),
        SliverPadding(
          padding: const EdgeInsets.only(left: 20, bottom: 49),
          sliver: SliverToBoxAdapter(
            child: SizedBox(
              height: 72,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                  itemCount: financesData.length,
                  itemBuilder: (context, index) {
                    return PaddingRight8(
                      child: Container(
                        height: 72,
                        decoration: BoxDecoration(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(4)),
                            color: Theme.of(context).colorScheme.surface),
                            child: Padding(padding: const EdgeInsets.all(16), child: 
                            Row(
                              children: [
                                SizedBox(
                                  width: 40,
                                  height: 40,
                                  child: financesData[index].icon,
                                ), 
                                const PaddingRight8(),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                   children: [
                                    Text("${financesData[index].price.toString()} U+20BD", style: textTheme.titleSmall,),
                                    //TODO: add optional child to each padding widget
                                    //TODO: replace all padding with cutsom paddings
                                    const PaddingTop8(),
                                    Text(financesData[index].comment, style: textTheme.bodySmall,)
                                  ],
                                )
                              ],
                            ),),
                      ),
                    );
                  })
            ),
          ),
        )
      ],
    );
  }
}

List<FinancesCardData> financesData = [
  const FinancesCardData(
      icon: FinancesAssetIcon(path: "assets/Money.png",),
      price: 5700,
      comment: "Деньги в ТА"),
  const FinancesCardData(
      icon: FinancesAssetIcon(path: "assets/Cashback.png"),
      price: 1255,
      comment: "Сдача"),
  const FinancesCardData(
      icon: FinancesAssetIcon(path: "assets/Money.png"),
      price: 5700,
      comment: "Деньги в ТА"),
  const FinancesCardData(
      icon: FinancesAssetIcon(path: "assets/Cashback.png"),
      price: 1255,
      comment: "Сдача"),
];

class FinancesAssetIcon extends StatelessWidget {
  final String path;
  const FinancesAssetIcon({
    super.key, required this.path,
  });

  @override
  Widget build(BuildContext context) {
    return ImageIcon(AssetImage(path), color: lightColorScheme.primary,);
  }
}