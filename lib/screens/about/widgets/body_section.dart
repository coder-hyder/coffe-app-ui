import 'package:coffe_app/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BodySection extends StatelessWidget {
  BodySection({super.key});

  final List<String> chocolates = [
    "White Chocolate",
    "Milk Chocolate",
    "Dark Chocolate",
  ];
  final List<String> sizes = ["S", "M", "L"];
  final List<dynamic> rate = [CupertinoIcons.minus, "1", CupertinoIcons.add];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // text
        Text(
          "Description",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
        SizedBox(height: 10),

        Text.rich(
          TextSpan(
            text:
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. \nVel tincidunt et ullamcorper eu, vivamus semper commodo............",
            children: [
              TextSpan(
                text: "Read More",
                style: TextStyle(
                  color: AppConstants.primaryColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),

        SizedBox(height: 25),
        Text(
          "Choice of Chocolate",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 15),

        // custom container
        SizedBox(
          width: double.infinity,
          height: 40,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Container(
                width: 140,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: index == 0
                      ? AppConstants.primaryColor
                      : Colors.transparent,
                  borderRadius: BorderRadius.circular(20),
                  border: BoxBorder.all(color: AppConstants.primaryColor),
                ),
                child: Text(chocolates[index]),
              );
            },
            separatorBuilder: (sized, context) => SizedBox(width: 20),
            itemCount: chocolates.length,
          ),
        ),

        SizedBox(height: 25),
        // footer section
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // left section
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Size",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    for (int i = 0; i < sizes.length; i++) ...[
                      Container(
                        width: 40,
                        height: 40,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: i == 0
                              ? AppConstants.primaryColor
                              : Colors.white,
                          borderRadius: BorderRadius.circular(1000),
                        ),
                        child: Text(
                          sizes[i],
                          style: TextStyle(
                            color: i == 0 ? Colors.white : Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      SizedBox(width: 20),
                    ],
                  ],
                ),
              ],
            ),

            // right section
            Column(
              children: [
                Text(
                  "Quantity",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    for (int i = 0; i < rate.length; i++) ...[
                      Container(
                        width: 40,
                        height: 40,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: i == 1
                              ? Colors.transparent
                              : AppConstants.primaryColor,
                          borderRadius: BorderRadius.circular(1000),
                        ),
                        child: i == 1
                            ? Text(rate[i], style: TextStyle(fontSize: 16))
                            : Icon(rate[i]),
                      ),
                      i == 2 ? SizedBox() : SizedBox(width: 20),
                    ],
                  ],
                ),
              ],
            ),
          ],
        ),
        SizedBox(height: 25,),

        Row(
          children: [
            Expanded(
              child: Column(

                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("  Price",style: TextStyle( fontSize: 18, fontWeight: FontWeight.w300),),
                  SizedBox(height: 5,),
                  Text.rich(
                    TextSpan(
                      text: "\$" ,
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26,color: AppConstants.primaryColor),
                      children: [TextSpan(text: " 4.20", style: TextStyle(color: Colors.white))]

                    )
                  )
                ],
              ),
            ),
           Expanded(flex: 1, child: ElevatedButton(style: ElevatedButton.styleFrom(foregroundColor: Colors.white, backgroundColor: AppConstants.primaryColor,padding: EdgeInsets.all(15) ,), onPressed: (){}, child: Text("Buy Now",style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal),)))
          ],
        )
      ],
    );
  }
}
