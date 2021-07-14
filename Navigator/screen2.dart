import 'package:flutter/material.dart';
import 'package:flutter_application_1/Navigator/router_class/routerclass.dart';

class Screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen2'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
         crossAxisAlignment: CrossAxisAlignment.center,
         mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
               width: double.infinity,
              child: ElevatedButton(
                onPressed: (){
                  Navigator.of(context).pop('Hi from screen1');
                },
                child: Text('Back to Screen1'),
                ),
            ),
              SizedBox(
                height: 50,
                ),
               Container(
                 width: double.infinity,
                 child: ElevatedButton(
                  onPressed: (){
                    Navigator.of(context).pushNamed(
                      'screen3', 
                      arguments: 'This is arguments from screen3'
                      );

                    // RouterApp.rout.pushNamedFunction(
                    //   'screen3',
                      
                    // );
                  },
                  child: Text('Go to Screen3'),
                  ),
               ),
              

          ],
        ),
      ),
    );
  }
}