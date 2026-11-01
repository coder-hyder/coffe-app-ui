import 'package:coffe_app/constants.dart';
import 'package:coffe_app/screens/home/widget/appbar.dart';
import 'package:coffe_app/screens/home/widget/card_items.dart';
import 'package:coffe_app/screens/home/widget/footer_section_card.dart';
import 'package:coffe_app/screens/home/widget/input_textfield.dart';
import 'package:coffe_app/screens/home/widget/items_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: AppConstants.navigationItems(),

      body: SingleChildScrollView(
        child: Container(
          color: Theme.of(context).colorScheme.surface,
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // appbar
              SafeArea(child: HomeAppBar()),

              SizedBox(height: AppConstants.spaceBetweenSections),

              // body section
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // text heading
                    Text(
                      "Find the best\nCoffee to your taste",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,

                        // color: AppConstants.textColor,
                      ),
                    ),

                    SizedBox(height: AppConstants.spaceBetweenSections),

                    // input text widget
                    InputTextField(),

                    SizedBox(height: AppConstants.spaceBetweenSections),

                    // list of coffe
                    ListOfItems(),

                    SizedBox(height: AppConstants.spaceBetweenSections),

                    // Card items
                    SizedBox(
                      width: double.infinity,
                      height: 240,
                      child: ListView.separated(
                        padding: EdgeInsets.only(bottom: 10),
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        separatorBuilder: (context, size) =>
                            SizedBox(width: 30),
                        itemCount: 2,
                        itemBuilder: (context, index) {
                          return CardItems();
                        },
                      ),
                    ),

                    SizedBox(height: AppConstants.spaceBetweenSections),

                    Text(
                      "Special for you",
                      style: TextStyle(
                        fontSize: 20,
                        // color: AppConstants.textColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    SizedBox(height: AppConstants.spaceBetweenSections),

                    // footer section
                    FooterSectionCard(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
