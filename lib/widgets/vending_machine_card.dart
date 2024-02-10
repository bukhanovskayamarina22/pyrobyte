import 'package:flutter/material.dart';
import 'package:pyrobyte/shared/paddings.dart';

class VendingMachineCard extends StatelessWidget {
  const VendingMachineCard({
    super.key,
    required this.textTheme,
    required this.colorScheme,
  });

  final TextTheme textTheme;
  final ColorScheme colorScheme;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(4)),
        color: Theme.of(context).colorScheme.surface
    
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.only(top: 8, left: 8),
                alignment: Alignment.bottomCenter,
                child: Text("54467345", style: textTheme.displaySmall,),),
              Container(
                alignment: Alignment.topCenter,
                child: Text("Снековый", style: textTheme.bodyMedium!.copyWith(color: colorScheme.secondary)),),
            ],
          ), 
          Padding(
            padding: const EdgeInsets.only(top: 8, left: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                PaddingRight8(
                  child: Container( 
                    width: 8,
                    height: 8,
                    decoration: BoxDecoration(
                      color: colorScheme.errorContainer,
                      shape: BoxShape.circle
                    ),
                  ),
                ), 
                Text("Не работает", style: textTheme.titleMedium,)
              ],
            ),
          ), 
          Padding(
            padding: const EdgeInsets.only(top: 8, left: 8),
            child: Text("ТЦ Мега, Химки", style: textTheme.bodyMedium!.copyWith(color: colorScheme.secondary),),
          ), 
          const PaddingTop24(),
          VendingMachineDataRow(leftText: "Тип шины", rightText: "MDB", textTheme: textTheme,),
          VendingMachineDataRow(leftText: "Уровень сигнала", rightText: "Стабильный", textTheme: textTheme,),
          VendingMachineDataRow(leftText: "Идентификатор", rightText: "13856646", textTheme: textTheme,),
          VendingMachineDataRow(leftText: "Модем", rightText: "3463457365", textTheme: textTheme,),
          const PaddingTop8()
        ],
      ),
    
    );
  }
}

class VendingMachineDataRow extends StatelessWidget {
  final TextTheme textTheme; 
  final String leftText; 
  final String rightText;
  const VendingMachineDataRow({super.key, required this.leftText, required this.rightText, required this.textTheme,});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 4, left: 8, right: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(leftText, style: textTheme.titleMedium,), 
          Text(rightText, style: textTheme.titleMedium,),
        ],
      ),
    );
  }
}