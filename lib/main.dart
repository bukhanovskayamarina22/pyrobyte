import 'package:flutter/material.dart';
import 'package:pyrobyte/models/price_list_item.dart';

import 'package:pyrobyte/pages/main_page.dart';
import 'package:pyrobyte/shared/buttons.dart';
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
    // ignore: unused_local_variable

    //TODO: provide the colorscheme in a more efficient way
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;
    return Scaffold(
      backgroundColor: colorScheme.primaryContainer,
      appBar: AppBar(
        backgroundColor: colorScheme.primaryContainer,
        leading: const IconButtonContainer(icon: Icon(Icons.arrow_back)),
        actions: [
          IconButtonContainer(
            icon: const Icon(Icons.settings),
            onPressed: () {
              showModalBottomSheet(
                context: context,
                // isScrollControlled: true,
                builder: (context) {
                  return Container(
                    decoration: BoxDecoration(
            color: colorScheme.surface,
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(16), topRight: Radius.circular(16))),
                    child: LoadBottomSheet(
                      colorScheme: colorScheme,
                      textTheme: textTheme,
                    ),
                  );
                },
              );
            },
          )
        ],
      ),
      body: MainPage(
        textTheme: textTheme,
        colorScheme: colorScheme,
      ),
    );
  }
}

class LoadBottomSheet extends StatelessWidget {
  final ColorScheme colorScheme;
  final TextTheme textTheme;
  const LoadBottomSheet({
    Key? key,
    required this.colorScheme,
    required this.textTheme,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
            color: colorScheme.surface,
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(16), topRight: Radius.circular(16))),
      child: Stack(
        children: [
          SingleChildScrollView(
            child: Container(
              decoration: BoxDecoration(
                color: colorScheme.surface,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 8, 19, 80), // Adjust the bottom padding to accommodate the height of the button
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Header1(textTheme: textTheme, text: "Загрузка"),
                        const IconButtonContainer(
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
                    Header2(textTheme: textTheme, text: "Decimal position"),
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
                    Header2(textTheme: textTheme, text: "Scale factor"),
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
                          style: textTheme.titleLarge,
                        ),
                      ],
                    ),
                    const PaddingTop24(),
                    Header2(textTheme: textTheme, text: "Режим мастер"),
                    const PaddingTop16(),
                    const IsInUseToggleButton(),
                    const PaddingTop24(),
                    Header2(textTheme: textTheme, text: "Прайс листы"),
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
              padding: EdgeInsets.only(left: 20, right: 19, bottom: 30),
              child: RectangularFilledButton(
                textTheme: textTheme,
                colorScheme: colorScheme,
                text: "Сохранить изменения",
                onPressed: () {
                  // Handle button tap
                },
              ),
            ),
          ),
        ],
      ),
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
            children: [Text("Последняя синхронизация с модемом", style: Theme.of(context).textTheme.bodySmall,),
            Text("1 час назад", style: Theme.of(context).textTheme.bodySmall,)],
          ),
          const PaddingTop8(),
          Row(
            children: [
              SizedBox(
                width: 72, //56 textfield + 16 padding
                child: Text("#", style: Theme.of(context).textTheme.bodySmall!.copyWith(color: Theme.of(context).colorScheme.secondary),)), 
              Text("Цена", style: Theme.of(context).textTheme.bodySmall!.copyWith(color: Theme.of(context).colorScheme.secondary),),
            ],
          ),
          ListView.builder(
            shrinkWrap: true,
            itemCount: items.length,
            itemBuilder: (context, index) {
              final TextEditingController indexController =
                  TextEditingController(text: items[index].index?.toString());
              final TextEditingController priceController =
                  TextEditingController(text: items[index].price?.toString());
              return Row(
                children: [
                  SizedBox(
                      width: 56,
                      height: 40,
                      child: BottomSheetTextField(
                        onChanged: (value) {
                          items[index] = items[index].copyWith(index: int.parse(indexController.text));
                        },
                        controller: indexController,
                      )),
                  const PaddingLeft16(),
                  SizedBox(
                    width: 104,
                    height: 38,
                    child: BottomSheetTextField(
                      onChanged: (value) {
                        items[index] = items[index].copyWith(price: int.parse(priceController.text));
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
              );
            },
          ),//TODO: wrong padding
          const PaddingTop16(),
          RectangularFullWidthOutlinedButton(textTheme: textTheme, colorScheme: Theme.of(context).colorScheme, text: "Добавить строку", 
          onPressed: () {
            setState(() {
              items.add(const PriceListItemData());
            });
          }
          ),
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
    this.hint, this.controller, this.onChanged, this.isOnlyDigits = false, 
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: isOnlyDigits ? TextInputType.number : TextInputType.text,
      onChanged: onChanged,
      controller: controller,
      textAlignVertical: TextAlignVertical.center,
      style: 
      Theme.of(context).textTheme.labelLarge!.copyWith(color: Theme.of(context).colorScheme.onSurface, ),
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
          hintStyle: textTheme.labelLarge!.copyWith(color: Theme.of(context).colorScheme.secondary)),
    );
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
      }, isSelected: selectedOption,
      //width: 336 / 2
      constraints: const BoxConstraints(minHeight: 40, maxHeight: 40, minWidth: 163, maxWidth: 163),
      children: [Text("Используется", style: Theme.of(context).textTheme.bodySmall!.copyWith(
        color: selectedOption[0] ? Theme.of(context).colorScheme.surface : Theme.of(context).colorScheme.primary
      ),), Text("Не используется", style: Theme.of(context).textTheme.bodySmall!.copyWith(
        color: selectedOption[1] ? Theme.of(context).colorScheme.surface : Theme.of(context).colorScheme.primary
      ),)]);
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
        borderColor: const Color(0xffd9e2f1,
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
                style: textTheme.titleLarge,
              ),
            )
          ],
        ),
      ),
    );
  }
}

//TODO: use everywhere where there is a contianer with the radius
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
    return Padding(
        padding: const EdgeInsets.fromLTRB(20, 8, 19, 8),
        child: GestureDetector(
          onTap: onPressed,
          child: Container(
            decoration: BoxDecoration(
              color: backgoundColor,
              shape: isRound ? BoxShape.circle : BoxShape.rectangle
            ),
            width: 40, height: 40, child: icon),
        ));
  }
}
