import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/ui/Scren/SignUp.dart';

import '../../widgets/screenbackground.dart';
import 'Login.dart';


class SetPassword extends StatelessWidget {
  const SetPassword({super.key});

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
                SizedBox(
                  height: 64,
                ),
                Text(
                  'Set Password',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  'Enter strong Password',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                SizedBox(
                  height: 16,
                ),
                TextField(
                  decoration: InputDecoration(hintText: 'Password'),
                ),
                SizedBox(height: 12,),
                TextField(
                  decoration: InputDecoration(hintText: 'Confirm Password'),
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
                                builder: (context) => SignUpScren()
                            ));
                      },
                      child: Text('Confirm')),
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Have an acount?"),
                    TextButton(
                        onPressed: () {
                          Navigator.pushAndRemoveUntil(context, MaterialPageRoute(
                              builder: (context)=>LoginScren()), (route) => false);
                        },
                        child: Text('Sign in'))
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
