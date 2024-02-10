import 'package:flutter/material.dart';
import 'package:pyrobyte/shared/paddings.dart';

class VendingMachineCard extends StatelessWidget {
  const VendingMachineCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(4)),
          color: Theme.of(context).colorScheme.surface),
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
                child: Text(
                  "54467345",
                  style: Theme.of(context).textTheme.displaySmall,
                ),
              ),
              Container(
                alignment: Alignment.topCenter,
                child: Text("Снековый",
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: Theme.of(context).colorScheme.secondary)),
              ),
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
                        color: Theme.of(context).colorScheme.errorContainer,
                        shape: BoxShape.circle),
                  ),
                ),
                Text(
                  "Не работает",
                  style: Theme.of(context).textTheme.titleMedium,
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8, left: 8),
            child: Text(
              "ТЦ Мега, Химки",
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(color: Theme.of(context).colorScheme.secondary),
            ),
          ),
          const PaddingTop24(),
          VendingMachineDataRow(
            leftText: "Тип шины",
            rightText: "MDB",
          ),
          VendingMachineDataRow(
            leftText: "Уровень сигнала",
            rightText: "Стабильный",
          ),
          VendingMachineDataRow(
            leftText: "Идентификатор",
            rightText: "13856646",
          ),
          VendingMachineDataRow(
            leftText: "Модем",
            rightText: "3463457365",
          ),
          const PaddingTop8()
        ],
      ),
    );
  }
}

class VendingMachineDataRow extends StatelessWidget {
  final String leftText;
  final String rightText;
  const VendingMachineDataRow({
    super.key,
    required this.leftText,
    required this.rightText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 4, left: 8, right: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            leftText,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          Text(
            rightText,
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ],
      ),
    );
  }
}
