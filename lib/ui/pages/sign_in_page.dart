import 'package:flutter/material.dart';
import 'package:flutter_pw_validator/flutter_pw_validator.dart';
import 'package:login_page/ui/pages/sign_up_page.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
        return Scaffold(
      body: Column(
        children: [
          Container(
            child: Center(
              child: Text('Welcome to xelpmoc',
                  style: TextStyle(
                    fontSize: w * 0.05,
                    color: Colors.black,
                  )),
            ),
          ),

          Container(
            child: TextField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  labelText: 'Username',
                  hintText: 'Enter Username'),
            ),
          ),
          Container(
            child: TextField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  labelText: 'Password',
                  hintText: 'Enter Password'),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const SignUpPage()));
            },
            child: const Text('Submit'),
          ),
        ],
      ),
    );
  }
}
