import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/ui/Scren/OTPvarification.dart';

import '../../widgets/screenbackground.dart';

class Emailvarification extends StatelessWidget {
  const Emailvarification({super.key});

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
                  'Your email address',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  'A 6 digits pin will sent to your email address',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                SizedBox(
                  height: 16,
                ),
                TextField(
                  decoration: InputDecoration(hintText: 'Email'),
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
                                builder: (context) => PINvarification()
                            ));
                      },
                      child: Icon(Icons.arrow_forward_ios)),
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
                          Navigator.pop(context);
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