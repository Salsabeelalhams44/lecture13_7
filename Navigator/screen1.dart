import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/Navigator/router_class/routerclass.dart';
import 'package:flutter_application_1/Navigator/screen2.dart';

class Screen1a extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:  Colors.green,
        title: Text('Screen1'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
             width: double.infinity,
            child: ElevatedButton(
              child: Text('Go to Screen2'),
              onPressed: ()async {
                String result = await  RouterApp.rout.pushFunction(Screen2());
              print(result);
              },
              
              ),
          )

        ],
      ),
    );
  }
}