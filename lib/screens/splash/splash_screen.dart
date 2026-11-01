import 'package:coffe_app/constants.dart';
import 'package:coffe_app/screens/home/home_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConstants.backgroundColor,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // image
              Image.asset("assets/images/intro.png"),

              // texts
              Column(
                children: [
                  Text(
                    "Stay Focused",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff38220F),
                    ),
                  ),
                  SizedBox(height: 15),

                  SizedBox(
                    width: 300,
                    child: Text(
                      "Get the cup filled of your choice to stay focused and awake. Diffrent type of coffee menu, hot lottee cappucino",
                      style: TextStyle(color: Color(0xff9da3a3)),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),

              // Button
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => HomeScreen()),
                  );
                },
                child: Container(
                  width: 140,
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: AppConstants.primaryColor,
                    borderRadius: BorderRadius.circular(1000),
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                        color: Colors.black12.withValues(alpha: 0.15),
                        spreadRadius: 2,
                        blurRadius: 10,
                        offset: Offset(0, 10),
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,

                    children: [
                      Text(
                        "Drive In",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      SizedBox(width: 5),

                      Icon(
                        Icons.arrow_forward_rounded,
                        color: Colors.white,
                        size: 18,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
