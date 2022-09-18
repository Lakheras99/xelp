import 'package:flutter/material.dart';
import 'package:login_page/ui/pages/main_page.dart';

import 'package:login_page/ui/pages/sign_in_page.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
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
            height: h*0.3,
          ),
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/xelp.png'))),
          ),
          Container(
            child: TextField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  labelText: 'Name ',
                  hintText: 'Enter Name'),
            ),
          ),
          Container(
            width: w * 1,
            height: h * 0.1,
            child: TextField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  labelText: 'Username ',
                  hintText: 'Enter Username'),
            ),
          ),
          Container(
            width: w * 1,
            height: h * 0.1,
            child: TextField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  labelText: 'Password',
                  hintText: 'Enter your password'),
            ),
          ),
          Container(
            width: w * 1,
            height: h * 0.1,
            child: TextField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  labelText: 'Repeat Password ',
                  hintText: 'Enter your password again'),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MainPage()));
            },
            child: const Text('Submit'),
          ),
        ],
      ),
    );
  }
}
