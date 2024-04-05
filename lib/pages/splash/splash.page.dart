import 'package:flutter/material.dart';
import 'package:my_app/gen/assets.gen.dart';
import 'package:my_app/pages/splash/widget/button.widget.dart';
import 'package:my_app/routes/routes.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            Assets.images.splash.path,
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
          Positioned(
              bottom: 40,
              left: 0,
              right: 0,
              child: Column(
                children: [
                  const Text(
                    "Geeta.",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 88,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  ButtonWidget(onTap: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, Routes.splash_v1, (route) => true);
                  }, title: 'Shop now', isFilled: false,),
                  const SizedBox(
                    height: 60,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 8,
                        height: 8,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Colors.white),
                      ),
                      Container(
                        width: 8,
                        height: 8,
                        margin: const EdgeInsets.symmetric(horizontal: 8),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Colors.white),
                      ),
                      Container(
                        width: 18,
                        height: 8,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Colors.white),
                      )
                    ],
                  )
                ],
              ))
        ],
      ),
    );
  }
}
