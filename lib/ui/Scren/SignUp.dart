import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../widgets/screenbackground.dart';
import 'emailvarification.dart';

class SignUpScren extends StatelessWidget {
  const SignUpScren({super.key});

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
                  'Join With Us',
                  style: Theme
                      .of(context)
                      .textTheme
                      .titleLarge,
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
                  decoration: InputDecoration(hintText: 'First Name'),
                ),
                SizedBox(
                  height: 16,
                ),
                TextField(
                  decoration: InputDecoration(hintText: 'Last Name'),
                ),
                SizedBox(
                  height: 16,
                ),
                TextField(
                  decoration: InputDecoration(hintText: 'Mobile'),
                  keyboardType: TextInputType.phone,
                ),
                SizedBox(
                  height: 16,
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

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(" Have an acount? "),
                    TextButton(onPressed: () {
                      Navigator.pop(context);
                    }, child: Text('Sign in'))
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



