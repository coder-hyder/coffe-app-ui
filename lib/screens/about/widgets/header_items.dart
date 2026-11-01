import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class HeaderSectionItems extends StatelessWidget {
  const HeaderSectionItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(

      width: double.infinity,
      height: height *0.5,
      // height: 400,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/coffe4.png"),
          fit: BoxFit.fill,
        ),
      ),

      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(1000),
                    color: AppConstants.darkThemeCard,
                  ),
                  padding: EdgeInsets.all(4),
                  child: Icon(Icons.arrow_back_ios_new_rounded),
                ),

                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(1000),
                    color: AppConstants.darkThemeCard,
                  ),
                  padding: EdgeInsets.all(4),
                  child: Icon(Icons.favorite, color: Colors.red),
                ),
              ],
            ),
          ),

          // section2
          ClipRRect(
            borderRadius: BorderRadius.circular(35),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaY: 18,sigmaX: 18),
              child: Container(
                padding: EdgeInsets.all(20),
                height: width*0.3,
                decoration: BoxDecoration(
                  color: Colors.black26.withValues(alpha: 0.3),
                  borderRadius: BorderRadius.circular(35),
                ),
                child: Row(

                  children: [
                    // portation 1
                    Expanded(
                      flex: 2,
                      child: Column(

                        crossAxisAlignment:CrossAxisAlignment.start,

                        children: [
                          Text(
                            "Espresso",
                            style: TextStyle(
                              fontSize: 20,

                            ),
                          ),

                          Text(
                            "with chocolate",
                            style: TextStyle(
                              fontSize: 10,

                            ),
                          ),
                          Spacer(),

                          // icon and rating bar
                          Row(
                            children: [
                              Icon(CupertinoIcons.star_fill, color: Colors.amber.shade600,size: 16,),
                              SizedBox(width: 3,),

                              Text("4.8", style:TextStyle(color: Colors.white, fontSize: 14),),

                              SizedBox(width: 5,),

                              Text("(6,098)", style:TextStyle(color: Colors.white, fontSize: 10),)
                            ],
                          )
                        ],
                      ),
                    ),



                    // Portation 2
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Image.asset("assets/images/coffe.png"),
                                  SizedBox(height: 5,),
                                  Text("Coffee", style: TextStyle(fontSize: 12),)
                                ],
                              ),



                              Column(
                                children: [
                                  Image.asset("assets/images/cho.png"),
                                  SizedBox(height: 5,),
                                  Text("Chocolate", style: TextStyle(fontSize: 12),)
                                ],
                              )
                            ],
                          ),

                          Text("Medium Roasted", style: TextStyle(fontSize: 14),overflow: TextOverflow.ellipsis,)
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}
