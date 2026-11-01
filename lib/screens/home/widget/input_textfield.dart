
import 'package:flutter/material.dart';

import '../../../constants.dart';

class InputTextField extends StatelessWidget {
  const InputTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              // color: Colors.white,
              color: Theme.of(context).colorScheme.surfaceContainer,

              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: Colors.black.withValues(alpha: 0.1),
                width: 1,
              ),
            ),
            child: TextField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.only(top: 11),
                border: InputBorder.none,
                prefixIcon: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Icon(Icons.search, size: 24),
                ),
                hintText: "Find your coffee...",
                hintStyle: TextStyle(color: Colors.grey),

                prefixIconColor: Colors.grey,
              ),
            ),
          ),
        ),

        SizedBox(width: 10,),

        // search icon
        Container(

          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: AppConstants.primaryColor,
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(1000),
              topRight: Radius.circular(1000),
              topLeft: Radius.circular(1000),
              bottomLeft: Radius.circular(500),
            ),
          ),
          child: Image.asset("assets/images/filter.png", width: 20, height: 20, ),
        ),
      ],
    );
  }
}