import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:untitled1/assets.dart';

import 'Login.dart';

class SplashScren extends StatelessWidget {
  const SplashScren({super.key});


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: SvgPicture.asset(
             Assetsutils.backgroundsvg),
          ),
          Center(
            child:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                SvgPicture.asset(
                  Assetsutils.logosvg,
                  width: 100,
                  fit: BoxFit.scaleDown,
                ),
                  SizedBox(height: 20,),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>LoginScren ()));
                  },
                  child: Text('Go to Login')),
                  ),
              ],
            ) ,



          ),

        ]
        ),

    );
  }
}