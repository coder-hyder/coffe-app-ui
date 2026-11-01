import 'package:coffe_app/screens/about/widgets/body_section.dart';
import 'package:coffe_app/screens/about/widgets/header_items.dart';
import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            color: Theme.of(context).colorScheme.surface,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // header container
                HeaderSectionItems(),
                SizedBox(height: 30,),

                // Body section
                BodySection()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
