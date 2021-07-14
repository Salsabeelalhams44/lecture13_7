import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/Navigator/screen2.dart';

class Screen3 extends StatelessWidget {
 String args;
 Screen3(this.args);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:  Colors.green,
        title: Text('Screen3'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: double.infinity,
            child: ElevatedButton(
              child: Text('Go to Screen2'),
              onPressed: (){
                Navigator.of(context).pop();
              },
              ),
          ),
          SizedBox(
            height: 50,),
            Container(
               width: double.infinity,
              child: ElevatedButton(
                child: Text('Go to Screen1'),
                onPressed: (){
                  Navigator.of(context).pushReplacementNamed('/');
                //  Navigator.of(context).pushNamedAndRemoveUntil(
                //   '/' , ModalRoute.withName('/'));
                },
                ),
            ),

            SizedBox(
            height: 50,),
           Text(args),
        ],
      ),
    );
  }
}