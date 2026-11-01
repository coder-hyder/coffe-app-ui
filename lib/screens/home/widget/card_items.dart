import 'dart:ui';

import 'package:coffe_app/constants.dart';
import 'package:coffe_app/helpers.dart';
import 'package:coffe_app/screens/about/about_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardItems extends StatelessWidget {
  const CardItems({super.key});


  @override
  Widget build(BuildContext context) {

    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (_)=>AboutScreen()));
      },
      child: Card(
        elevation: 8,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                right: 12,
                left: 12,
                top: 12,
                bottom: 4,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Padding(
                  //   padding: const EdgeInsets.all(12.0),
                  //   child: Image.asset("assets/images/coffe3.png"),
                  // )
                  CardImageSection(),

                  // text section
                  buildTextPadding(context ),
                ],
              ),
            ),

            // stack corner custom container
            Positioned(
              bottom: 0,
              right: 0,
              child: Container(

                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(color: AppConstants.primaryColor , borderRadius: BorderRadius.only(topLeft: Radius.circular(30), bottomRight: Radius.circular(30))),
                child: Icon(Icons.add, size: 40, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Padding buildTextPadding(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Espresso",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              // color: AppConstants.textColor,

              fontSize: 16,
            ),
          ),

          Text("with Oa t Milk", style: TextStyle(fontSize: 10, )),

          SizedBox(height: 15),

          Text.rich(
            TextSpan(
              text: "\$ ",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: AppConstants.primaryColor,
                fontSize: 18,
              ),
              children: <TextSpan>[
                TextSpan(
                  text: '4.20', // Highlighted text
                  style: TextStyle(
                    color: Theme.of(context).textTheme.bodyLarge?.color,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// image section
class CardImageSection extends StatelessWidget {
  const CardImageSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 5),
      child: Stack(
        children: [
          Image.asset("assets/images/coffe3.png"),

          Positioned(
            right: 0,
            child: ClipRRect(
              borderRadius: BorderRadiusGeometry.only(
                bottomLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                child: Container(
                  // clipBehavior: Clip.none,
                  width: 70,
                  height: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                    color: Color(0xdd231a0e).withValues(alpha: 0.7),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.star, color: Colors.amber),
                      SizedBox(width: 5),
                      Text(
                        "4.5",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
