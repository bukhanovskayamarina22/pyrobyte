import 'package:flutter/material.dart';
import 'package:pyrobyte/models/price_list_item.dart';

import 'package:pyrobyte/pages/main_page.dart';
import 'package:pyrobyte/shared/buttons.dart';
import 'package:pyrobyte/shared/containers.dart';
import 'package:pyrobyte/shared/headers.dart';
import 'package:pyrobyte/shared/paddings.dart';

import 'package:pyrobyte/shared/theme.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: lightColorScheme,
        textTheme: textTheme,
      ),
      themeMode: ThemeMode.light,
      home: const AppScaffold(),
    ),
  );
}

class AppScaffold extends StatelessWidget {
  const AppScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
        leading: const IconButtonContainer(icon: Icon(Icons.arrow_back)),
        actions: [
          IconButtonContainer(
            icon: const Icon(Icons.settings),
            onPressed: () {
              showModalBottomSheet(
                context: context,
                isScrollControlled: true,
                builder: (context) {
                  return ClipRRect(
                    borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(16),
                              topRight: Radius.circular(16)
                        ),
                    child: Container(
                      height: MediaQuery.of(context).size.height - 56,
                      decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.surface,
                          
                      ),
                      child: const LoadBottomSheet(),
                    ),
                  );
                },
              );
            },
          )
        ],
      ),
      body: const MainPage(),
    );
  }
}

class LoadBottomSheet extends StatelessWidget {
  const LoadBottomSheet({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.surface,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(16),
                topRight: Radius.circular(16),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 8, 19,
                  30), // Adjust the bottom padding to accommodate the height of the button
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Header1(text: "Загрузка"),
                      IconButtonContainer(
                        icon: Icon(
                          Icons.close,
                          size: 18,
                        ),
                      ),
                    ],
                  ),
                  const PaddingTop24(),
                  const SuccessCard(
                    text: "Изменения от 12.07.2021, 12:30 применены успешно",
                  ),
                  const PaddingTop24(),
                  const Header2(text: "Decimal position"),
                  const PaddingTop8(),
                  const Row(
                    children: [
                      ContainerWithRaduis(
                        width: 160,
                        height: 40,
                        child: BottomSheetTextField(
                          hint: "Cash",
                        ),
                      ),
                      PaddingLeft16(),
                      ContainerWithRaduis(
                        width: 160,
                        height: 40,
                        child: BottomSheetTextField(
                          hint: "Cashless",
                        ),
                      ),
                    ],
                  ),
                  const PaddingTop24(),
                  const Header2(text: "Scale factor"),
                  const PaddingTop8(),
                  const Row(
                    children: [
                      ContainerWithRaduis(
                        width: 160,
                        height: 40,
                        child: BottomSheetTextField(
                          hint: "Cash",
                        ),
                      ),
                      PaddingLeft16(),
                      ContainerWithRaduis(
                        width: 160,
                        height: 40,
                        child: BottomSheetTextField(
                          hint: "Cashless",
                        ),
                      ),
                    ],
                  ),
                  const PaddingTop24(),
                  Row(
                    children: [
                      const CheckBox(),
                      const PaddingLeft16(),
                      Text(
                        "Включить звук",
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                    ],
                  ),
                  const PaddingTop24(),
                  const Header2(text: "Режим мастер"),
                  const PaddingTop16(),
                  const IsInUseToggleButton(),
                  const PaddingTop24(),
                  const Header2(text: "Прайс листы"),
                  const PriceDataList(),
                  const PaddingTop24(),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          left: 0,
          right: 0,
          bottom: 0,
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 19, bottom: 30),
            child: RectangularFilledButton(
              text: "Сохранить изменения",
              onPressed: () {
                // Handle button tap
              },
            ),
          ),
        ),
      ],
    );
  }
}

class PriceDataList extends StatefulWidget {
  const PriceDataList({
    super.key,
  });

  @override
  State<PriceDataList> createState() => _PriceDataListState();
}

class _PriceDataListState extends State<PriceDataList> {
  List<PriceListItemData> items = [
    const PriceListItemData(index: 2, price: 50),
    const PriceListItemData(),
  ];
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const PaddingTop8(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Последняя синхронизация с модемом",
                style: Theme.of(context).textTheme.bodySmall,
              ),
              Text(
                "1 час назад",
                style: Theme.of(context).textTheme.bodySmall,
              )
            ],
          ),
          const PaddingTop8(),
          Row(
            children: [
              SizedBox(
                  width: 72, //56 textfield + 16 padding
                  child: Text(
                    "#",
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        color: Theme.of(context).colorScheme.secondary),
                  )),
              Text(
                "Цена",
                style: Theme.of(context)
                    .textTheme
                    .bodySmall!
                    .copyWith(color: Theme.of(context).colorScheme.secondary),
              ),
            ],
          ),
          const PaddingTop8(),
          ListView.builder(
            shrinkWrap: true,
            itemCount: items.length,
            itemBuilder: (context, index) {
              final TextEditingController indexController =
                  TextEditingController(text: items[index].index?.toString());
              final TextEditingController priceController =
                  TextEditingController(text: items[index].price?.toString());
              return Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: Row(
                  children: [
                    SizedBox(
                        width: 56,
                        height: 40,
                        child: BottomSheetTextField(
                          onChanged: (value) {
                            items[index] = items[index]
                                .copyWith(index: int.parse(indexController.text));
                          },
                          controller: indexController,
                        )),
                    const PaddingLeft16(),
                    SizedBox(
                      width: 104,
                      height: 40,
                      child: BottomSheetTextField(
                        onChanged: (value) {
                          items[index] = items[index]
                              .copyWith(price: int.parse(priceController.text));
                        },
                        controller: priceController,
                      ),
                    ),
                    Expanded(child: Container()),
                    IconButtonContainer(
                        isRound: true,
                        backgoundColor: Theme.of(context)
                            .colorScheme
                            .errorContainer
                            .withOpacity(0.08),
                        onPressed: () {
                          setState(() {
                            items.removeAt(index);
                          });
                        },
                        icon: Icon(
                          Icons.close,
                          color: Theme.of(context).colorScheme.errorContainer,
                          size: 11.31,
                        ))
                  ],
                ),
              );
            },
          ), //TODO: wrong padding
          const PaddingTop16(),
          RectangularFullWidthOutlinedButton(
              text: "Добавить строку",
              onPressed: () {
                setState(() {
                  items.add(const PriceListItemData());
                });
              }),
        ],
      ),
    );
  }
}

class BottomSheetTextField extends StatelessWidget {
  final bool isOnlyDigits;
  final TextEditingController? controller;
  final Function(String)? onChanged;
  final String? hint;
  const BottomSheetTextField({
    super.key,
    this.hint,
    this.controller,
    this.onChanged,
    this.isOnlyDigits = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: isOnlyDigits ? TextInputType.number : TextInputType.text,
      onChanged: onChanged,
      controller: controller,
      textAlignVertical: TextAlignVertical.center,
      style: Theme.of(context).textTheme.labelLarge!.copyWith(
            color: Theme.of(context).colorScheme.onSurface,
          ),
      decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(8),
          enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(
            //TODO: move the color to the colorscheme
            color: Color(0xffd9e2f1),
            width: 1,
          )),
          focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(
            //TODO: move the color to the colorscheme
            color: Color(0xffd9e2f1),
            width: 1,
          )),
          border: const OutlineInputBorder(
              borderSide: BorderSide(
            //TODO: move the color to the colorscheme
            color: Color(0xffd9e2f1),
            width: 1,
          )),
          hintText: hint,
          hintStyle: Theme.of(context)
              .textTheme
              .labelLarge!
              .copyWith(color: Theme.of(context).colorScheme.secondary)),
    );
  }
}

class SuccessCard extends StatelessWidget {
  final String text;
  const SuccessCard({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return ContainerWithRaduis(
      height: 80,
      width: MediaQuery.of(context).size.width,
      backgroundColor: const Color(0xff00be08).withOpacity(0.08),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              width: 32,
              height: 32,
              child: Icon(
                Icons.check,
                color: Color(0xff00be08),
                size: 18,
              ),
            ),
            const PaddingRight8(),
            Expanded(
              child: Text(
                text,
                style: Theme.of(context).textTheme.titleLarge,
              ),
            )
          ],
        ),
      ),
    );
  }
}

//TODO: use everywhere where there is a contianer with the radius
