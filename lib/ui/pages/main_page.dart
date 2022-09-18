import 'package:flutter/material.dart';
import 'package:login_page/ui/pages/fiboutput.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var a,b;
    return Scaffold(
      appBar: AppBar(
        title: Text("Fibonacii"),

         ),
      body: Column(
        children: [
          Container(

            child: TextField(
              onSubmitted: (a) {

                // this is never called
                debugPrint('onSubmitted s=$a');

              },
              decoration: InputDecoration(
                  border: InputBorder.none,
                  labelText: 'First number',
                  hintText: 'Enter First number'),
            ),
          ),
          Container(
            child: TextField(
          onSubmitted: (b) {

              // this is never called
              debugPrint('onSubmitted s=$a');

          },

              decoration: InputDecoration(
                  border: InputBorder.none,
                  labelText: 'Second number',
                  hintText: 'Enter Second number'),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Out()));
            },
            child: const Text('Submit'),
          ),
        ],
      ),
       );
  }
}
