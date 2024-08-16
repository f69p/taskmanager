import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:untitled1/assets.dart';
import 'package:untitled1/ui/Scren/emailvarification.dart';
import 'package:untitled1/widgets/screenbackground.dart';




class LoginScren extends StatelessWidget {
  const LoginScren({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenBackground(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 64,),
                Text(
                  'Get Start With',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                SizedBox(
                  height: 16,
                ),
                TextField(
                  decoration: InputDecoration(hintText: 'Email'),
                ),
                SizedBox(
                  height: 12,
                ),
                TextField(
                  decoration: InputDecoration(hintText: 'Password'),
                ),
                SizedBox(
                  height: 16,
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Emailvarification()));
                      },
                      child: Icon(Icons.arrow_forward_ios)),
                ),
                TextButton(onPressed: () {}, child: Text('Forgot PassWord?')),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an acount? "),
                    TextButton(onPressed: () {}, child: Text('Sign up'))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

