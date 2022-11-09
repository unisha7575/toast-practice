import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class FirstToast extends StatefulWidget {
  const FirstToast({Key? key}) : super(key: key);

  @override
  State<FirstToast> createState() => _FirstToastState();
}

class _FirstToastState extends State<FirstToast> {
  showToast(String msg, color) {
    Fluttertoast.showToast(
        msg: msg, backgroundColor: color, timeInSecForIosWeb: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                showToast("like", Colors.red);
              },
              child: Text("Click me"),
            ),
            ElevatedButton(
              onPressed: () {
                showToast("subscribe", Colors.blue);
              },
              child: Text("Click me"),
            ),
            ElevatedButton(
              onPressed: () {
                showToast("share", Colors.green);
              },
              child: Text("Click me"),
            ),
            ElevatedButton(
                child: Text("Snackbar"),
                onPressed: () {
                  final message =
                      SnackBar(
                          content: Text("This is a Snack Bar"),

                      );
                  ScaffoldMessenger.of(context).showSnackBar(message);
                }),
            ElevatedButton(onPressed: (){
              showModalBottomSheet(context: context, builder: (context){
                return Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                   ListTile(
                     leading: Icon(Icons.delete),
                     title: Text("delete"),
                   ),ListTile(
                     leading: Icon(Icons.edit),
                     title: Text("edit"),
                      
                   )
                  ],
                );
              }
              );

            }, child: Text("Buttom Sheet"))
          ],
        ),
      ),
    );
  }
}
