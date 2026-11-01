import 'package:flutter/material.dart';

import '../../../constants.dart';

class ListOfItems extends StatelessWidget {
  ListOfItems({super.key});

  List<String> items = ["Espresso", "Latte", "Cappuccino", "Cafetière"];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, size) => SizedBox(width: 35),
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Text(
                items[index],
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: index == 0
                      ? AppConstants.primaryColor
                      : Theme.of(context).textTheme.bodyLarge?.color,
                ),
              ),

              SizedBox(height: 10),

              // indicator
              Container(
                width: 10,
                height: 10,
                decoration: BoxDecoration(
                  color: index == 0
                      ? AppConstants.primaryColor
                      : Colors.transparent,
                  borderRadius: BorderRadius.circular(1000),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
